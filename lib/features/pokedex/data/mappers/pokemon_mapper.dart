import 'package:global66_test/features/pokedex/data/models/pokemon_detail_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_list_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_species_response.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';

class PokemonMapper {
  static PokemonSummary toSummary({
    required PokemonSummaryModel model,
    required int id,
    List<TypeSlotModel>? types,
    required bool isFavorite,
  }) {
    return PokemonSummary(
      name: model.name,
      url: model.url,
      id: id,
      types: types
              ?.map((e) => PokemonType(name: e.type.name, url: e.type.url))
              .toList() ??
          [],
      isFavorite: isFavorite,
    );
  }

  static PokemonDetail toDetail({
    required PokemonDetailResponse detail,
    required PokemonSpeciesResponse species,
    required Set<String> weaknesses,
    required bool isFavorite,
  }) {
    // Find category in English
    final genus = species.genera.firstWhere(
      (element) => element.language.name == 'en',
      orElse: () => species.genera.first,
    );

    // Find description in Spanish and Sword version
    final flavorText = species.flavorTextEntries.firstWhere(
      (element) =>
          element.language.name == 'es' && element.version.name == 'sword',
      orElse: () => species.flavorTextEntries.firstWhere(
        (element) => element.language.name == 'es',
        orElse: () => species.flavorTextEntries.first,
      ),
    );

    return PokemonDetail(
      id: detail.id,
      name: detail.name,
      weight: detail.weight,
      height: detail.height,
      types: detail.types
          .map((e) => PokemonType(name: e.type.name, url: e.type.url))
          .toList(),
      abilities: detail.abilities.map((e) => e.ability.name).toList(),
      imageUrl: detail.sprites.frontDefault,
      speciesUrl: detail.species.url,
      genderRate: species.genderRate,
      category: genus.genus.replaceAll(' Pokémon', ''),
      description: flavorText.flavorText.replaceAll('\n', ' '),
      weaknesses: weaknesses.toList(),
      isFavorite: isFavorite,
    );
  }
}
