import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';

final getFavoritePokemonsUseCaseProvider =
    Provider<GetFavoritePokemonsUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return GetFavoritePokemonsUseCase(repository);
});

class GetFavoritePokemonsUseCase {
  final PokedexRepository _repository;

  GetFavoritePokemonsUseCase(this._repository);

  Future<List<PokemonDetail>> call() async {
    return _repository.getFavoritePokemons();
  }

  Stream<List<PokemonDetail>> watch() async* {
    yield await _repository.getFavoritePokemons();
    await for (final _ in _repository.onFavoritesChanged) {
      yield await _repository.getFavoritePokemons();
    }
  }
}
