import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';

final toggleFavoriteUseCaseProvider = Provider<ToggleFavoriteUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return ToggleFavoriteUseCase(repository);
});

class ToggleFavoriteUseCase {
  final PokedexRepository _repository;

  ToggleFavoriteUseCase(this._repository);

  Future<void> call(PokemonDetail pokemon) async {
    return _repository.toggleFavorite(pokemon);
  }
}
