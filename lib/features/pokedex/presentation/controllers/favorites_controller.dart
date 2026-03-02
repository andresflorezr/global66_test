import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_favorite_pokemons_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/toggle_favorite_use_case.dart';

final favoritesControllerProvider =
    StateNotifierProvider<FavoritesController, AsyncValue<List<PokemonDetail>>>(
        (ref) {
  final getFavoritesUseCase = ref.watch(getFavoritePokemonsUseCaseProvider);
  final toggleFavoriteUseCase = ref.watch(toggleFavoriteUseCaseProvider);
  return FavoritesController(getFavoritesUseCase, toggleFavoriteUseCase);
});

class FavoritesController
    extends StateNotifier<AsyncValue<List<PokemonDetail>>> {
  final GetFavoritePokemonsUseCase _getFavoritesUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  StreamSubscription? _subscription;

  FavoritesController(this._getFavoritesUseCase, this._toggleFavoriteUseCase)
      : super(const AsyncValue.loading()) {
    _subscribe();
  }

  void _subscribe() {
    _subscription?.cancel();
    _subscription = _getFavoritesUseCase.watch().listen(
      (favorites) {
        state = AsyncValue.data(favorites);
      },
      onError: (error, stackTrace) {
        state = AsyncValue.error(error, stackTrace);
      },
    );
  }

  Future<void> loadFavorites() async {
    // Force refresh by re-subscribing or manual fetch
    state = const AsyncValue.loading();
    try {
      final favorites = await _getFavoritesUseCase.call();
      state = AsyncValue.data(favorites);
      // Re-establish subscription if needed, though it should be active
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> removeFavorite(PokemonDetail pokemon) async {
    // Optimistically update UI
    final currentList = state.value ?? [];
    final updatedList = currentList.where((p) => p.id != pokemon.id).toList();
    state = AsyncValue.data(updatedList);

    try {
      await _toggleFavoriteUseCase.call(pokemon);
      // Stream will update if needed, but optimistic update is faster
    } catch (e) {
      // Revert if fails (though stream should handle it)
      state = AsyncValue.data(currentList);
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
