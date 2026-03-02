import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';

final getPokemonListUseCaseProvider = Provider<GetPokemonListUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return GetPokemonListUseCase(repository);
});

class GetPokemonListUseCase {
  final PokedexRepository _repository;

  GetPokemonListUseCase(this._repository);

  Future<List<PokemonSummary>> call({int limit = 20, int offset = 0}) {
    return _repository.getPokemons(limit: limit, offset: offset);
  }
}
