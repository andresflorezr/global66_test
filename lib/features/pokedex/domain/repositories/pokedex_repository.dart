import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';

abstract class PokedexRepository {
  Future<List<PokemonSummary>> getPokemons({int limit = 20, int offset = 0});
  Future<PokemonDetail> getPokemonDetail(String name);
  Future<void> toggleFavorite(PokemonDetail pokemon);
  Future<bool> isFavorite(int id);
  Future<List<PokemonDetail>> getFavoritePokemons();
  Stream<void> get onFavoritesChanged;
}
