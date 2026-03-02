import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/data/mappers/pokemon_mapper.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_detail_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_list_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_species_response.dart';

void main() {
  group('PokemonMapper', () {
    test('toSummary maps PokemonSummaryModel to PokemonSummary correctly', () {
      // arrange
      const tPokemonSummaryModel = PokemonSummaryModel(
        name: 'bulbasaur',
        url: 'https://pokeapi.co/api/v2/pokemon/1/',
      );
      const tId = 1;
      const tIsFavorite = true;

      // act
      final result = PokemonMapper.toSummary(
        model: tPokemonSummaryModel,
        id: tId,
        isFavorite: tIsFavorite,
      );

      // assert
      expect(result.id, tId);
      expect(result.name, tPokemonSummaryModel.name);
      expect(result.url, tPokemonSummaryModel.url);
      expect(result.isFavorite, tIsFavorite);
      expect(result.types, isEmpty);
    });

    test('toDetail maps responses to PokemonDetail correctly', () {
      // arrange
      const tPokemonDetailResponse = PokemonDetailResponse(
        id: 1,
        name: 'bulbasaur',
        weight: 69,
        height: 7,
        types: [
          TypeSlotModel(
            slot: 1,
            type: TypeModel(name: 'grass', url: 'url'),
          ),
        ],
        sprites: SpritesModel(frontDefault: 'image_url'),
        abilities: [
          AbilitySlotModel(
            ability: AbilityModel(name: 'overgrow'),
            isHidden: false,
            slot: 1,
          ),
        ],
        species: SpeciesModel(url: 'species_url'),
      );

      const tPokemonSpeciesResponse = PokemonSpeciesResponse(
        genderRate: 1,
        genera: [
          GenusModel(
            genus: 'Seed Pokémon',
            language: LanguageModel(name: 'en', url: 'url'),
          ),
        ],
        flavorTextEntries: [
          FlavorTextEntryModel(
            flavorText: 'A strange seed was planted on its back at birth.',
            language: LanguageModel(name: 'en', url: 'url'),
            version: VersionModel(name: 'red', url: 'url'),
          ),
          FlavorTextEntryModel(
            flavorText: 'Una extraña semilla le fue plantada al nacer.',
            language: LanguageModel(name: 'es', url: 'url'),
            version: VersionModel(name: 'sword', url: 'url'),
          ),
        ],
      );

      final tWeaknesses = {'fire', 'ice', 'flying', 'psychic'};
      const tIsFavorite = true;

      // act
      final result = PokemonMapper.toDetail(
        detail: tPokemonDetailResponse,
        species: tPokemonSpeciesResponse,
        weaknesses: tWeaknesses,
        isFavorite: tIsFavorite,
      );

      // assert
      expect(result.id, tPokemonDetailResponse.id);
      expect(result.name, tPokemonDetailResponse.name);
      expect(result.weight, tPokemonDetailResponse.weight);
      expect(result.height, tPokemonDetailResponse.height);
      expect(result.imageUrl, tPokemonDetailResponse.sprites.frontDefault);
      expect(result.speciesUrl, tPokemonDetailResponse.species.url);
      expect(result.genderRate, tPokemonSpeciesResponse.genderRate);
      expect(result.category, 'Seed');
      expect(
        result.description,
        'Una extraña semilla le fue plantada al nacer.',
      );
      expect(result.weaknesses, tWeaknesses.toList());
      expect(result.isFavorite, tIsFavorite);
      expect(result.types.length, 1);
      expect(result.types.first.name, 'grass');
      expect(result.abilities.length, 1);
      expect(result.abilities.first, 'overgrow');
    });

    test(
        'toDetail uses fallback description when Spanish Sword version is missing',
        () {
      // arrange
      const tPokemonDetailResponse = PokemonDetailResponse(
        id: 1,
        name: 'bulbasaur',
        weight: 69,
        height: 7,
        types: [],
        sprites: SpritesModel(frontDefault: 'image_url'),
        abilities: [],
        species: SpeciesModel(url: 'species_url'),
      );

      const tPokemonSpeciesResponse = PokemonSpeciesResponse(
        genderRate: 1,
        genera: [
          GenusModel(
            genus: 'Seed Pokémon',
            language: LanguageModel(name: 'en', url: 'url'),
          ),
        ],
        flavorTextEntries: [
          FlavorTextEntryModel(
            flavorText: 'Fallback Spanish description.',
            language: LanguageModel(name: 'es', url: 'url'),
            version: VersionModel(name: 'red', url: 'url'),
          ),
        ],
      );

      final tWeaknesses = <String>{};
      const tIsFavorite = false;

      // act
      final result = PokemonMapper.toDetail(
        detail: tPokemonDetailResponse,
        species: tPokemonSpeciesResponse,
        weaknesses: tWeaknesses,
        isFavorite: tIsFavorite,
      );

      // assert
      expect(result.description, 'Fallback Spanish description.');
    });

    test('toDetail uses first description when no Spanish version is found', () {
      // arrange
      const tPokemonDetailResponse = PokemonDetailResponse(
        id: 1,
        name: 'bulbasaur',
        weight: 69,
        height: 7,
        types: [],
        sprites: SpritesModel(frontDefault: 'image_url'),
        abilities: [],
        species: SpeciesModel(url: 'species_url'),
      );

      const tPokemonSpeciesResponse = PokemonSpeciesResponse(
        genderRate: 1,
        genera: [
          GenusModel(
            genus: 'Seed Pokémon',
            language: LanguageModel(name: 'en', url: 'url'),
          ),
        ],
        flavorTextEntries: [
          FlavorTextEntryModel(
            flavorText: 'English description only.',
            language: LanguageModel(name: 'en', url: 'url'),
            version: VersionModel(name: 'red', url: 'url'),
          ),
        ],
      );

      final tWeaknesses = <String>{};
      const tIsFavorite = false;

      // act
      final result = PokemonMapper.toDetail(
        detail: tPokemonDetailResponse,
        species: tPokemonSpeciesResponse,
        weaknesses: tWeaknesses,
        isFavorite: tIsFavorite,
      );

      // assert
      expect(result.description, 'English description only.');
    });

    test('toDetail uses first genus when no English version is found', () {
      // arrange
      const tPokemonDetailResponse = PokemonDetailResponse(
        id: 1,
        name: 'bulbasaur',
        weight: 69,
        height: 7,
        types: [],
        sprites: SpritesModel(frontDefault: 'image_url'),
        abilities: [],
        species: SpeciesModel(url: 'species_url'),
      );

      const tPokemonSpeciesResponse = PokemonSpeciesResponse(
        genderRate: 1,
        genera: [
          GenusModel(
            genus: 'Semilla Pokémon',
            language: LanguageModel(name: 'es', url: 'url'),
          ),
        ],
        flavorTextEntries: [
          FlavorTextEntryModel(
            flavorText: 'Desc',
            language: LanguageModel(name: 'es', url: 'url'),
            version: VersionModel(name: 'red', url: 'url'),
          ),
        ],
      );

      final tWeaknesses = <String>{};
      const tIsFavorite = false;

      // act
      final result = PokemonMapper.toDetail(
        detail: tPokemonDetailResponse,
        species: tPokemonSpeciesResponse,
        weaknesses: tWeaknesses,
        isFavorite: tIsFavorite,
      );

      // assert
      expect(result.category, 'Semilla');
    });
  });
}
