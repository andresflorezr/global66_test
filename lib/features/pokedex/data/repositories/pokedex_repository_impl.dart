import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/data/mappers/pokemon_mapper.dart';
import 'package:global66_test/features/pokedex/data/sources/local/i_pokedex_local_data_source.dart';
import 'package:global66_test/features/pokedex/data/sources/local/pokedex_local_source.dart';
import 'package:global66_test/features/pokedex/data/sources/remote/i_pokedex_remote_data_source.dart';
import 'package:global66_test/features/pokedex/data/sources/remote/pokedex_api_source.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';

final pokedexRepositoryProvider = Provider<PokedexRepository>((ref) {
  final apiSource = ref.watch(pokedexApiSourceProvider);
  final localSource = ref.watch(pokedexLocalSourceProvider);
  return PokedexRepositoryImpl(apiSource, localSource);
});

class PokedexRepositoryImpl implements PokedexRepository {
  final IPokedexRemoteDataSource _apiSource;
  final IPokedexLocalDataSource _localSource;
  final _favoritesController = StreamController<void>.broadcast();

  PokedexRepositoryImpl(this._apiSource, this._localSource);

  @override
  Stream<void> get onFavoritesChanged => _favoritesController.stream;

  @override
  Future<List<PokemonSummary>> getPokemons({
    int limit = 20,
    int offset = 0,
  }) async {
    final response = await _apiSource.getPokemons(limit: limit, offset: offset);

    // Fetch details for each pokemon to get types
    final pokemons = await Future.wait(response.results.map((model) async {
      final id = int.tryParse(
            model.url.split('/').where((e) => e.isNotEmpty).last,
          ) ??
          0;

      try {
        // We need to fetch the detail to get the types for the list view
        // This might be heavy if we do it for all 20 items, but it's needed for the design
        final detail = await _apiSource.getPokemonDetail(model.name);

        final isFavorite = await _localSource.isFavorite(id);

        return PokemonMapper.toSummary(
          model: model,
          id: id,
          types: detail.types,
          isFavorite: isFavorite,
        );
      } catch (e) {
        // Fallback if detail fetch fails
        final isFavorite = await _localSource.isFavorite(id);
        return PokemonMapper.toSummary(
          model: model,
          id: id,
          isFavorite: isFavorite,
        );
      }
    }));

    return pokemons;
  }

  @override
  Future<PokemonDetail> getPokemonDetail(String name) async {
    final response = await _apiSource.getPokemonDetail(name);

    // Fetch species details to get gender rate and category
    final speciesResponse =
        await _apiSource.getPokemonSpecies(response.species.url);

    // Fetch type details to get weaknesses
    final Set<String> weaknesses = {};
    await Future.wait(response.types.map((typeSlot) async {
      try {
        final typeDetail =
            await _apiSource.getPokemonTypeDetail(typeSlot.type.url);
        for (var damageRelation
            in typeDetail.damageRelations.doubleDamageFrom) {
          weaknesses.add(damageRelation.name);
        }
      } catch (e) {
        // Ignore error if type fetch fails
      }
    }));

    final isFavorite = await _localSource.isFavorite(response.id);

    return PokemonMapper.toDetail(
      detail: response,
      species: speciesResponse,
      weaknesses: weaknesses,
      isFavorite: isFavorite,
    );
  }

  @override
  Future<void> toggleFavorite(PokemonDetail pokemon) async {
    if (await _localSource.isFavorite(pokemon.id)) {
      await _localSource.removeFavoritePokemon(pokemon.id);
    } else {
      await _localSource.saveFavoritePokemon(pokemon);
    }
    _favoritesController.add(null);
  }

  @override
  Future<bool> isFavorite(int id) {
    return _localSource.isFavorite(id);
  }

  @override
  Future<List<PokemonDetail>> getFavoritePokemons() {
    return _localSource.getFavoritePokemons();
  }
}
