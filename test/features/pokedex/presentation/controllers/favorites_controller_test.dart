import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_favorite_pokemons_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/toggle_favorite_use_case.dart';
import 'package:global66_test/features/pokedex/presentation/controllers/favorites_controller.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'favorites_controller_test.mocks.dart';

@GenerateMocks([GetFavoritePokemonsUseCase, ToggleFavoriteUseCase])
void main() {
  late FavoritesController controller;
  late MockGetFavoritePokemonsUseCase mockGetFavoritesUseCase;
  late MockToggleFavoriteUseCase mockToggleFavoriteUseCase;

  setUp(() {
    mockGetFavoritesUseCase = MockGetFavoritePokemonsUseCase();
    mockToggleFavoriteUseCase = MockToggleFavoriteUseCase();

    // Default stream stub
    when(mockGetFavoritesUseCase.watch()).thenAnswer((_) => Stream.empty());

    controller = FavoritesController(
      mockGetFavoritesUseCase,
      mockToggleFavoriteUseCase,
    );
  });

  tearDown(() {
    controller.dispose();
  });

  const tPokemonDetail = PokemonDetail(
    id: 1,
    name: 'bulbasaur',
    imageUrl: 'url',
    types: [],
    weight: 10,
    height: 10,
    abilities: [],
    category: '',
    description: '',
    genderRate: 1,
    speciesUrl: '',
    weaknesses: [],
    isFavorite: true,
  );

  test('initial state should be loading', () {
    expect(controller.state, const AsyncValue<List<PokemonDetail>>.loading());
  });

  test('should update state when stream emits favorites', () async {
    // arrange
    final tFavorites = [tPokemonDetail];
    final streamController = StreamController<List<PokemonDetail>>();
    when(mockGetFavoritesUseCase.watch())
        .thenAnswer((_) => streamController.stream);

    // Re-instantiate to pick up new mock
    controller = FavoritesController(
      mockGetFavoritesUseCase,
      mockToggleFavoriteUseCase,
    );

    // act
    streamController.add(tFavorites);
    await Future.delayed(Duration.zero);

    // assert
    expect(controller.state, AsyncValue.data(tFavorites));

    await streamController.close();
  });

  test('should update state with error when stream emits error', () async {
    // arrange
    final tError = Exception('Error fetching favorites');
    final streamController = StreamController<List<PokemonDetail>>();
    when(mockGetFavoritesUseCase.watch())
        .thenAnswer((_) => streamController.stream);

    controller = FavoritesController(
      mockGetFavoritesUseCase,
      mockToggleFavoriteUseCase,
    );

    // act
    streamController.addError(tError);
    await Future.delayed(Duration.zero);

    // assert
    expect(controller.state.hasError, true);
    expect(controller.state.error, tError);

    await streamController.close();
  });

  test('loadFavorites should update state with data on success', () async {
    // arrange
    final tFavorites = [tPokemonDetail];
    when(mockGetFavoritesUseCase.call()).thenAnswer((_) async => tFavorites);

    // act
    await controller.loadFavorites();

    // assert
    expect(controller.state, AsyncValue.data(tFavorites));
    verify(mockGetFavoritesUseCase.call());
  });

  test('loadFavorites should update state with error on failure', () async {
    // arrange
    final tError = Exception('Failed to load');
    when(mockGetFavoritesUseCase.call()).thenThrow(tError);

    // act
    await controller.loadFavorites();

    // assert
    expect(controller.state.hasError, true);
    expect(controller.state.error, tError);
  });

  test('removeFavorite should optimistically update state and call usecase',
      () async {
    // arrange
    final tFavorites = [tPokemonDetail];
    final streamController = StreamController<List<PokemonDetail>>();
    when(mockGetFavoritesUseCase.watch())
        .thenAnswer((_) => streamController.stream);
    controller = FavoritesController(
      mockGetFavoritesUseCase,
      mockToggleFavoriteUseCase,
    );
    streamController.add(tFavorites);
    await Future.delayed(Duration.zero);

    when(mockToggleFavoriteUseCase.call(any)).thenAnswer((_) async {});

    // act
    await controller.removeFavorite(tPokemonDetail);

    // assert
    expect(controller.state.value, isEmpty);
    verify(mockToggleFavoriteUseCase.call(tPokemonDetail));

    await streamController.close();
  });

  test('removeFavorite should revert state if usecase fails', () async {
    // arrange
    final tFavorites = [tPokemonDetail];
    final streamController = StreamController<List<PokemonDetail>>();
    when(mockGetFavoritesUseCase.watch())
        .thenAnswer((_) => streamController.stream);
    controller = FavoritesController(
      mockGetFavoritesUseCase,
      mockToggleFavoriteUseCase,
    );
    streamController.add(tFavorites);
    await Future.delayed(Duration.zero);

    when(mockToggleFavoriteUseCase.call(any)).thenThrow(Exception('Failed'));

    // act
    await controller.removeFavorite(tPokemonDetail);

    // assert
    expect(controller.state.value, tFavorites);
    verify(mockToggleFavoriteUseCase.call(tPokemonDetail));

    await streamController.close();
  });
}
