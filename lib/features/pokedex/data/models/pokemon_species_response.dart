import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_response.freezed.dart';
part 'pokemon_species_response.g.dart';

@freezed
abstract class PokemonSpeciesResponse with _$PokemonSpeciesResponse {
  const factory PokemonSpeciesResponse({
    @JsonKey(name: 'gender_rate') required int genderRate,
    required List<GenusModel> genera,
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorTextEntryModel> flavorTextEntries,
  }) = _PokemonSpeciesResponse;

  factory PokemonSpeciesResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonSpeciesResponseFromJson(json);
}

@freezed
abstract class FlavorTextEntryModel with _$FlavorTextEntryModel {
  const factory FlavorTextEntryModel({
    @JsonKey(name: 'flavor_text') required String flavorText,
    required LanguageModel language,
    required VersionModel version,
  }) = _FlavorTextEntryModel;

  factory FlavorTextEntryModel.fromJson(Map<String, Object?> json) =>
      _$FlavorTextEntryModelFromJson(json);
}

@freezed
abstract class VersionModel with _$VersionModel {
  const factory VersionModel({
    required String name,
    required String url,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, Object?> json) =>
      _$VersionModelFromJson(json);
}

@freezed
abstract class GenusModel with _$GenusModel {
  const factory GenusModel({
    required String genus,
    required LanguageModel language,
  }) = _GenusModel;

  factory GenusModel.fromJson(Map<String, Object?> json) =>
      _$GenusModelFromJson(json);
}

@freezed
abstract class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String name,
    required String url,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, Object?> json) =>
      _$LanguageModelFromJson(json);
}
