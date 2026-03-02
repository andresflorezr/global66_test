import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_favorite_pokemons_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_pokemon_list_with_details_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/search_pokemon_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/toggle_favorite_use_case.dart';

// State class for Pokedex pagination
class PokedexState {
  final AsyncValue<List<PokemonDetail>> asyncPokemons;
  final bool isLoadingMore;
  final int offset;
  final bool hasMore;
  final bool isSearching;

  PokedexState({
    this.asyncPokemons = const AsyncValue.loading(),
    this.isLoadingMore = false,
    this.offset = 0,
    this.hasMore = true,
    this.isSearching = false,
  });

  PokedexState copyWith({
    AsyncValue<List<PokemonDetail>>? asyncPokemons,
    bool? isLoadingMore,
    int? offset,
    bool? hasMore,
    bool? isSearching,
  }) {
    return PokedexState(
      asyncPokemons: asyncPokemons ?? this.asyncPokemons,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      offset: offset ?? this.offset,
      hasMore: hasMore ?? this.hasMore,
      isSearching: isSearching ?? this.isSearching,
    );
  }
}

final pokedexListControllerProvider =
    StateNotifierProvider<PokedexListController, PokedexState>((ref) {
  final useCase = ref.watch(getPokemonListWithDetailsUseCaseProvider);
  final favoritesUseCase = ref.watch(getFavoritePokemonsUseCaseProvider);
  final toggleUseCase = ref.watch(toggleFavoriteUseCaseProvider);
  final searchUseCase = ref.watch(searchPokemonUseCaseProvider);
  return PokedexListController(
      useCase, favoritesUseCase, toggleUseCase, searchUseCase);
});

class PokedexListController extends StateNotifier<PokedexState> {
  final GetPokemonListWithDetailsUseCase _useCase;
  final GetFavoritePokemonsUseCase _favoritesUseCase;
  final ToggleFavoriteUseCase _toggleUseCase;
  final SearchPokemonUseCase _searchUseCase;
  static const int _limit = 20;
  StreamSubscription? _subscription;

  PokedexListController(
    this._useCase,
    this._favoritesUseCase,
    this._toggleUseCase,
    this._searchUseCase,
  ) : super(PokedexState()) {
    _listenToFavorites();
  }

  void _listenToFavorites() {
    _subscription = _favoritesUseCase.watch().listen((favorites) {
      if (!state.asyncPokemons.hasValue) return;

      final currentList = state.asyncPokemons.value!;
      final favoriteIds = favorites.map((e) => e.id).toSet();

      final updatedList = currentList.map((pokemon) {
        final isFav = favoriteIds.contains(pokemon.id);
        if (pokemon.isFavorite != isFav) {
          return pokemon.copyWith(isFavorite: isFav);
        }
        return pokemon;
      }).toList();

      state = state.copyWith(asyncPokemons: AsyncValue.data(updatedList));
    });
  }

  Future<void> toggleFavorite(PokemonDetail pokemon) async {
    // Optimistic update
    final currentList = state.asyncPokemons.value ?? [];
    final updatedList = currentList.map((p) {
      if (p.id == pokemon.id) {
        return p.copyWith(isFavorite: !p.isFavorite);
      }
      return p;
    }).toList();
    state = state.copyWith(asyncPokemons: AsyncValue.data(updatedList));

    try {
      await _toggleUseCase.call(pokemon);
    } catch (e) {
      // Revert happens automatically via stream or we can manually revert here
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> searchPokemon(String query) async {
    if (query.isEmpty) {
      if (state.isSearching) {
        state = state.copyWith(isSearching: false);
        loadInitialPokemons();
      }
      return;
    }

    try {
      // Set searching state but keep current data to avoid full screen loader
      state = state.copyWith(
        isSearching: true,
      );

      // Keep showing previous search results if available
      // If not, it will show loading spinner because isSearching is true

      final pokemon = await _searchUseCase.call(query.toLowerCase());
      state = state.copyWith(
        asyncPokemons: AsyncValue.data([pokemon]),
        hasMore: false,
        // isSearching remains true to indicate search mode
      );
    } catch (e, stack) {
      // If search fails, it likely means pokemon not found (404) or network error
      // We'll update the state with an empty list to indicate "no results"
      // instead of an error state that might show the generic error screen.
      // But let's check if it's a 404 or similar if possible.
      // For now, assume any error during search means "not found" or "error"
      // but to show "not found", we can return an empty list.
      state = state.copyWith(
        asyncPokemons: const AsyncValue.data([]),
        hasMore: false,
      );
    }
  }

  Future<void> loadInitialPokemons() async {
    try {
      // If we are resetting from a search, we might want to keep the current list
      // visible until the new list loads, or show a loader.
      // Showing a loader is safer to avoid confusion.
      state = state.copyWith(
        // asyncPokemons: const AsyncValue.loading(), // Don't clear list immediately if you want smooth transition
        hasMore: true,
        isSearching: false,
      );

      // If asyncPokemons is empty or error, set it to loading
      if (!state.asyncPokemons.hasValue) {
        state = state.copyWith(asyncPokemons: const AsyncValue.loading());
      }

      final result = await _useCase.call(limit: _limit, offset: 0);

      state = state.copyWith(
        asyncPokemons: AsyncValue.data(result),
        offset: _limit,
        hasMore: result.length >= _limit,
      );
    } catch (e, stack) {
      state = state.copyWith(asyncPokemons: AsyncValue.error(e, stack));
    }
  }

  Future<void> loadMorePokemons() async {
    // Prevent loading if searching, or already loading more, or no more data, or initial loading failed/is in progress
    if (state.isSearching ||
        state.isLoadingMore ||
        !state.hasMore ||
        state.asyncPokemons.isLoading ||
        state.asyncPokemons.hasError) {
      return;
    }

    try {
      state = state.copyWith(isLoadingMore: true);

      final currentList = state.asyncPokemons.value ?? [];
      final result = await _useCase.call(limit: _limit, offset: state.offset);

      if (result.isEmpty) {
        state = state.copyWith(
          isLoadingMore: false,
          hasMore: false,
        );
        return;
      }

      state = state.copyWith(
        asyncPokemons: AsyncValue.data([...currentList, ...result]),
        isLoadingMore: false,
        offset: state.offset + _limit,
        hasMore: result.length >= _limit,
      );
    } catch (e, stack) {
      // If pagination fails, we just stop loading more but keep existing data
      state = state.copyWith(isLoadingMore: false);
      // Optionally show a snackbar via a side-effect provider or similar
    }
  }
}
