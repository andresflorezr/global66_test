import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/is_favorite_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/toggle_favorite_use_case.dart';

final pokemonDetailControllerProvider =
    StateNotifierProvider.autoDispose<PokemonDetailController, PokemonDetail?>(
        (ref) {
  final toggleFavoriteUseCase = ref.watch(toggleFavoriteUseCaseProvider);
  final isFavoriteUseCase = ref.watch(isFavoriteUseCaseProvider);
  final repository = ref.watch(pokedexRepositoryProvider);
  return PokemonDetailController(
      toggleFavoriteUseCase, isFavoriteUseCase, repository);
});

class PokemonDetailController extends StateNotifier<PokemonDetail?> {
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  final IsFavoriteUseCase _isFavoriteUseCase;
  final PokedexRepository _repository;
  StreamSubscription? _subscription;

  PokemonDetailController(
    this._toggleFavoriteUseCase,
    this._isFavoriteUseCase,
    this._repository,
  ) : super(null) {
    _subscribe();
  }

  void _subscribe() {
    _subscription?.cancel();
    _subscription = _repository.onFavoritesChanged.listen((_) {
      checkFavoriteStatus();
    });
  }

  void setPokemon(PokemonDetail pokemon) {
    state = pokemon;
    checkFavoriteStatus();
  }

  void updateDetails(PokemonDetail newDetails) {
    if (state == null) {
      setPokemon(newDetails);
    } else {
      // Preserve current favorite status if user toggled it recently,
      // but also re-check with DB to be sure.
      // Since we are listening to the stream, the stream will trigger checkFavoriteStatus.
      // However, we want to update the other details (stats, etc.) without overwriting isFavorite with potentially stale data.
      // Let's use the local state's isFavorite for now, and let checkFavoriteStatus correct it if needed.
      state = newDetails.copyWith(isFavorite: state!.isFavorite);
    }
  }

  Future<void> checkFavoriteStatus() async {
    if (state == null) return;
    try {
      final isFav = await _isFavoriteUseCase.call(state!.id);
      if (mounted && state != null) {
        state = state!.copyWith(isFavorite: isFav);
      }
    } catch (e) {
      // Ignore error or log it
    }
  }

  Future<void> toggleFavorite() async {
    if (state == null) return;

    final currentPokemon = state!;
    final newStatus = !currentPokemon.isFavorite;

    // Optimistically update UI
    state = currentPokemon.copyWith(isFavorite: newStatus);

    try {
      await _toggleFavoriteUseCase.call(currentPokemon);
      // No need to manually check status as the repository stream will trigger it
    } catch (e) {
      // Revert if error
      if (mounted) {
        state = currentPokemon;
      }
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
