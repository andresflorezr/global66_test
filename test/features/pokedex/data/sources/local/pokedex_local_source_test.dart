import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/data/sources/local/pokedex_local_source.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks([SharedPreferences])
import 'pokedex_local_source_test.mocks.dart';

void main() {
  late PokedexLocalSource dataSource;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = PokedexLocalSource(mockSharedPreferences);
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

  const tFavoritesKey = 'favorite_pokemons';
  final tPokemonMap = {
    'id': 1,
    'name': 'bulbasaur',
    'weight': 10,
    'height': 10,
    'types': [],
    'abilities': [],
    'imageUrl': 'url',
    'speciesUrl': '',
    'genderRate': 1,
    'category': '',
    'description': '',
    'weaknesses': [],
  };

  group('saveFavoritePokemon', () {
    test(
      'should call SharedPreferences to save data',
      () async {
        // arrange
        when(mockSharedPreferences.getString(any)).thenReturn(null);
        when(mockSharedPreferences.setString(any, any))
            .thenAnswer((_) async => true);

        // act
        await dataSource.saveFavoritePokemon(tPokemonDetail);

        // assert
        final expectedJson = jsonEncode([tPokemonMap]);
        verify(mockSharedPreferences.setString(tFavoritesKey, expectedJson));
      },
    );

    test(
      'should update existing pokemon if already in favorites',
      () async {
        // arrange
        final existingJson = jsonEncode([tPokemonMap]);
        when(mockSharedPreferences.getString(any)).thenReturn(existingJson);
        when(mockSharedPreferences.setString(any, any))
            .thenAnswer((_) async => true);

        // act
        await dataSource.saveFavoritePokemon(tPokemonDetail);

        // assert
        verify(mockSharedPreferences.setString(tFavoritesKey, existingJson));
      },
    );
  });

  group('removeFavoritePokemon', () {
    test(
      'should remove pokemon from favorites list',
      () async {
        // arrange
        final existingJson = jsonEncode([tPokemonMap]);
        when(mockSharedPreferences.getString(any)).thenReturn(existingJson);
        when(mockSharedPreferences.setString(any, any))
            .thenAnswer((_) async => true);

        // act
        await dataSource.removeFavoritePokemon(1);

        // assert
        verify(mockSharedPreferences.setString(tFavoritesKey, jsonEncode([])));
      },
    );
  });

  group('getFavoritePokemons', () {
    test(
      'should return list of PokemonDetail from SharedPreferences',
      () async {
        // arrange
        final existingJson = jsonEncode([tPokemonMap]);
        when(mockSharedPreferences.getString(any)).thenReturn(existingJson);

        // act
        final result = await dataSource.getFavoritePokemons();

        // assert
        expect(result, [tPokemonDetail]);
      },
    );

    test(
      'should return empty list if SharedPreferences returns null',
      () async {
        // arrange
        when(mockSharedPreferences.getString(any)).thenReturn(null);

        // act
        final result = await dataSource.getFavoritePokemons();

        // assert
        expect(result, []);
      },
    );

    test(
      'should return empty list if JSON decode fails',
      () async {
        // arrange
        when(mockSharedPreferences.getString(any)).thenReturn('invalid_json');

        // act
        final result = await dataSource.getFavoritePokemons();

        // assert
        expect(result, []);
      },
    );
  });

  group('isFavorite', () {
    test(
      'should return true if pokemon is in favorites',
      () async {
        // arrange
        final existingJson = jsonEncode([tPokemonMap]);
        when(mockSharedPreferences.getString(any)).thenReturn(existingJson);

        // act
        final result = await dataSource.isFavorite(1);

        // assert
        expect(result, true);
      },
    );

    test(
      'should return false if pokemon is not in favorites',
      () async {
        // arrange
        final existingJson = jsonEncode([tPokemonMap]);
        when(mockSharedPreferences.getString(any)).thenReturn(existingJson);

        // act
        final result = await dataSource.isFavorite(2);

        // assert
        expect(result, false);
      },
    );
  });
}
