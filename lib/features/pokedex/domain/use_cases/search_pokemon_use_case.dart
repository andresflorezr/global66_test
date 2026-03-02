import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';

final searchPokemonUseCaseProvider = Provider<SearchPokemonUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return SearchPokemonUseCase(repository);
});

class SearchPokemonUseCase {
  final PokedexRepository _repository;

  SearchPokemonUseCase(this._repository);

  Future<PokemonDetail> call(String name) {
    return _repository.getPokemonDetail(name.toLowerCase());
  }
}
