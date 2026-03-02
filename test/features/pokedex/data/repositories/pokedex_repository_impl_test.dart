import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_detail_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_list_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_species_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_type_detail_response.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';
import 'package:global66_test/features/pokedex/data/sources/local/i_pokedex_local_data_source.dart';
import 'package:global66_test/features/pokedex/data/sources/remote/i_pokedex_remote_data_source.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart'
    as detail;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'pokedex_repository_impl_test.mocks.dart';

@GenerateMocks([IPokedexRemoteDataSource, IPokedexLocalDataSource])
void main() {
  late PokedexRepositoryImpl repository;
  late MockIPokedexRemoteDataSource mockRemoteDataSource;
  late MockIPokedexLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockIPokedexRemoteDataSource();
    mockLocalDataSource = MockIPokedexLocalDataSource();
    repository =
        PokedexRepositoryImpl(mockRemoteDataSource, mockLocalDataSource);
  });

  const tPokemonSummaryModel = PokemonSummaryModel(
    name: 'bulbasaur',
    url: 'https://pokeapi.co/api/v2/pokemon/1/',
  );

  const tPokemonListResponse = PokemonListResponse(
    count: 1,
    results: [tPokemonSummaryModel],
  );

  const tPokemonDetailResponse = PokemonDetailResponse(
    id: 1,
    name: 'bulbasaur',
    weight: 10,
    height: 10,
    types: [
      TypeSlotModel(
        slot: 1,
        type: TypeModel(name: 'grass', url: 'url'),
      )
    ],
    sprites: SpritesModel(frontDefault: 'url'),
    abilities: [],
    species: SpeciesModel(url: 'url'),
  );

  const tPokemonSpeciesResponse = PokemonSpeciesResponse(
    genderRate: 1,
    genera: [
      GenusModel(
        genus: 'Seed Pokémon',
        language: LanguageModel(name: 'en', url: 'url'),
      )
    ],
    flavorTextEntries: [
      FlavorTextEntryModel(
        flavorText: 'flavorText',
        language: LanguageModel(name: 'en', url: 'url'),
        version: VersionModel(name: 'red', url: 'url'),
      )
    ],
  );

  const tPokemonTypeDetailResponse = PokemonTypeDetailResponse(
    damageRelations: DamageRelationsModel(
      doubleDamageFrom: [
        TypeLinkModel(name: 'fire', url: 'url'),
      ],
    ),
  );

  const tPokemonSummary = PokemonSummary(
    id: 1,
    name: 'bulbasaur',
    url: 'https://pokeapi.co/api/v2/pokemon/1/',
    types: [detail.PokemonType(name: 'grass', url: 'url')],
    isFavorite: false,
  );

  const tPokemonDetail = detail.PokemonDetail(
    id: 1,
    name: 'bulbasaur',
    imageUrl: 'url',
    types: [detail.PokemonType(name: 'grass', url: 'url')],
    weight: 10,
    height: 10,
    abilities: [],
    category: 'Seed',
    description: 'flavorText',
    genderRate: 1,
    speciesUrl: 'url',
    weaknesses: ['fire'],
    isFavorite: false,
  );

  group('getPokemons', () {
    test(
        'should return list of pokemon summaries when remote data source is successful',
        () async {
      // arrange
      when(mockRemoteDataSource.getPokemons(limit: 20, offset: 0))
          .thenAnswer((_) async => tPokemonListResponse);
      when(mockRemoteDataSource.getPokemonDetail('bulbasaur'))
          .thenAnswer((_) async => tPokemonDetailResponse);
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => false);

      // act
      final result = await repository.getPokemons(limit: 20, offset: 0);

      // assert
      expect(result, [tPokemonSummary]);
      verify(mockRemoteDataSource.getPokemons(limit: 20, offset: 0));
      verify(mockRemoteDataSource.getPokemonDetail('bulbasaur'));
      verify(mockLocalDataSource.isFavorite(1));
    });

    test(
        'should return list of pokemon summaries with fallback when detail fetch fails',
        () async {
      // arrange
      when(mockRemoteDataSource.getPokemons(limit: 20, offset: 0))
          .thenAnswer((_) async => tPokemonListResponse);
      when(mockRemoteDataSource.getPokemonDetail('bulbasaur'))
          .thenThrow(Exception());
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => false);

      // act
      final result = await repository.getPokemons(limit: 20, offset: 0);

      // assert
      expect(result.length, 1);
      expect(result.first.id, 1);
      expect(result.first.types, isEmpty);
      verify(mockRemoteDataSource.getPokemons(limit: 20, offset: 0));
      verify(mockRemoteDataSource.getPokemonDetail('bulbasaur'));
      verify(mockLocalDataSource.isFavorite(1));
    });
  });

  group('getPokemonDetail', () {
    test('should return pokemon detail when remote data source is successful',
        () async {
      // arrange
      when(mockRemoteDataSource.getPokemonDetail('bulbasaur'))
          .thenAnswer((_) async => tPokemonDetailResponse);
      when(mockRemoteDataSource.getPokemonSpecies('url'))
          .thenAnswer((_) async => tPokemonSpeciesResponse);
      when(mockRemoteDataSource.getPokemonTypeDetail('url'))
          .thenAnswer((_) async => tPokemonTypeDetailResponse);
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => false);

      // act
      final result = await repository.getPokemonDetail('bulbasaur');

      // assert
      expect(result, tPokemonDetail);
      verify(mockRemoteDataSource.getPokemonDetail('bulbasaur'));
      verify(mockRemoteDataSource.getPokemonSpecies('url'));
      verify(mockRemoteDataSource.getPokemonTypeDetail('url'));
      verify(mockLocalDataSource.isFavorite(1));
    });

    test(
        'should return pokemon detail with empty weaknesses when type fetch fails',
        () async {
      // arrange
      when(mockRemoteDataSource.getPokemonDetail('bulbasaur'))
          .thenAnswer((_) async => tPokemonDetailResponse);
      when(mockRemoteDataSource.getPokemonSpecies('url'))
          .thenAnswer((_) async => tPokemonSpeciesResponse);
      when(mockRemoteDataSource.getPokemonTypeDetail('url'))
          .thenThrow(Exception());
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => false);

      // act
      final result = await repository.getPokemonDetail('bulbasaur');

      // assert
      expect(result.weaknesses, isEmpty);
      verify(mockRemoteDataSource.getPokemonDetail('bulbasaur'));
      verify(mockRemoteDataSource.getPokemonSpecies('url'));
      verify(mockRemoteDataSource.getPokemonTypeDetail('url'));
    });
  });

  group('toggleFavorite', () {
    test('should remove from favorites if already favorite', () async {
      // arrange
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => true);
      when(mockLocalDataSource.removeFavoritePokemon(1))
          .thenAnswer((_) async => {});

      // act
      await repository.toggleFavorite(tPokemonDetail);

      // assert
      verify(mockLocalDataSource.isFavorite(1));
      verify(mockLocalDataSource.removeFavoritePokemon(1));
      verifyNever(mockLocalDataSource.saveFavoritePokemon(tPokemonDetail));
    });

    test('should add to favorites if not favorite', () async {
      // arrange
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => false);
      when(mockLocalDataSource.saveFavoritePokemon(tPokemonDetail))
          .thenAnswer((_) async => {});

      // act
      await repository.toggleFavorite(tPokemonDetail);

      // assert
      verify(mockLocalDataSource.isFavorite(1));
      verify(mockLocalDataSource.saveFavoritePokemon(tPokemonDetail));
      verifyNever(mockLocalDataSource.removeFavoritePokemon(1));
    });
  });

  group('isFavorite', () {
    test('should call local source isFavorite', () async {
      // arrange
      when(mockLocalDataSource.isFavorite(1)).thenAnswer((_) async => true);

      // act
      final result = await repository.isFavorite(1);

      // assert
      expect(result, true);
      verify(mockLocalDataSource.isFavorite(1));
    });
  });

  group('getFavoritePokemons', () {
    test('should call local source getFavoritePokemons', () async {
      // arrange
      when(mockLocalDataSource.getFavoritePokemons())
          .thenAnswer((_) async => [tPokemonDetail]);

      // act
      final result = await repository.getFavoritePokemons();

      // assert
      expect(result, [tPokemonDetail]);
      verify(mockLocalDataSource.getFavoritePokemons());
    });
  });
}
