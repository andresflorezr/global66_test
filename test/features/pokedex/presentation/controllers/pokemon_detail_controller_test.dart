import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/is_favorite_use_case.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/toggle_favorite_use_case.dart';
import 'package:global66_test/features/pokedex/presentation/controllers/pokemon_detail_controller.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'pokemon_detail_controller_test.mocks.dart';

@GenerateMocks([ToggleFavoriteUseCase, IsFavoriteUseCase, PokedexRepository])
void main() {
  late PokemonDetailController controller;
  late MockToggleFavoriteUseCase mockToggleFavoriteUseCase;
  late MockIsFavoriteUseCase mockIsFavoriteUseCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockToggleFavoriteUseCase = MockToggleFavoriteUseCase();
    mockIsFavoriteUseCase = MockIsFavoriteUseCase();
    mockRepository = MockPokedexRepository();

    when(mockRepository.onFavoritesChanged).thenAnswer((_) => Stream.empty());

    controller = PokemonDetailController(
      mockToggleFavoriteUseCase,
      mockIsFavoriteUseCase,
      mockRepository,
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
    isFavorite: false,
  );

  test('initial state should be null', () {
    expect(controller.state, null);
  });

  test('setPokemon should update state and check favorite status', () async {
    // arrange
    when(mockIsFavoriteUseCase.call(1)).thenAnswer((_) async => true);

    // act
    controller.setPokemon(tPokemonDetail);
    // wait for async checkFavoriteStatus
    await Future.delayed(Duration.zero);

    // assert
    expect(controller.state?.id, tPokemonDetail.id);
    expect(controller.state?.isFavorite, true);
    verify(mockIsFavoriteUseCase.call(1));
  });

  test('updateDetails should update state when previously null', () async {
    // arrange
    when(mockIsFavoriteUseCase.call(1)).thenAnswer((_) async => false);

    // act
    controller.updateDetails(tPokemonDetail);
    await Future.delayed(Duration.zero);

    // assert
    expect(controller.state?.id, tPokemonDetail.id);
  });

  test('updateDetails should preserve favorite status when already set',
      () async {
    // arrange
    // First set pokemon as favorite
    when(mockIsFavoriteUseCase.call(1)).thenAnswer((_) async => true);
    controller.setPokemon(tPokemonDetail);
    await Future.delayed(Duration.zero);

    // New details have isFavorite: false by default in test object
    final newDetails = tPokemonDetail.copyWith(weight: 20, isFavorite: false);

    // act
    controller.updateDetails(newDetails);

    // assert
    expect(controller.state?.weight, 20);
    expect(controller.state?.isFavorite, true); // Should keep true
  });

  test('toggleFavorite should update state optimistically and call usecase',
      () async {
    // arrange
    controller.setPokemon(tPokemonDetail);
    when(mockToggleFavoriteUseCase.call(any)).thenAnswer((_) async {});

    // act
    await controller.toggleFavorite();

    // assert
    expect(controller.state?.isFavorite, true);
    verify(mockToggleFavoriteUseCase.call(any));
  });

  test('toggleFavorite should revert on error', () async {
    // arrange
    controller.setPokemon(tPokemonDetail);
    when(mockToggleFavoriteUseCase.call(any)).thenThrow(Exception('Failed'));

    // act
    await controller.toggleFavorite();

    // assert
    expect(controller.state?.isFavorite, false); // Reverted
    verify(mockToggleFavoriteUseCase.call(any));
  });

  test('should listen to repository stream and re-check favorite status',
      () async {
    // arrange
    final streamController = StreamController<void>.broadcast();
    when(mockRepository.onFavoritesChanged)
        .thenAnswer((_) => streamController.stream);

    // Re-create controller to listen to new stream
    controller = PokemonDetailController(
      mockToggleFavoriteUseCase,
      mockIsFavoriteUseCase,
      mockRepository,
    );

    controller.setPokemon(tPokemonDetail);
    // Initially false
    expect(controller.state?.isFavorite, false);

    // Setup next check to return true
    when(mockIsFavoriteUseCase.call(1)).thenAnswer((_) async => true);

    // act
    streamController.add(null);
    await Future.delayed(Duration.zero);

    // assert
    expect(controller.state?.isFavorite, true);

    await streamController.close();
  });
}
