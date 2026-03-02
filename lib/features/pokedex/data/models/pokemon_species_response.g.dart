// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonSpeciesResponse _$PokemonSpeciesResponseFromJson(
        Map<String, dynamic> json) =>
    _PokemonSpeciesResponse(
      genderRate: (json['gender_rate'] as num).toInt(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => GenusModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorTextEntryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonSpeciesResponseToJson(
        _PokemonSpeciesResponse instance) =>
    <String, dynamic>{
      'gender_rate': instance.genderRate,
      'genera': instance.genera,
      'flavor_text_entries': instance.flavorTextEntries,
    };

_FlavorTextEntryModel _$FlavorTextEntryModelFromJson(
        Map<String, dynamic> json) =>
    _FlavorTextEntryModel(
      flavorText: json['flavor_text'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
      version: VersionModel.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlavorTextEntryModelToJson(
        _FlavorTextEntryModel instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
      'version': instance.version,
    };

_VersionModel _$VersionModelFromJson(Map<String, dynamic> json) =>
    _VersionModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionModelToJson(_VersionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_GenusModel _$GenusModelFromJson(Map<String, dynamic> json) => _GenusModel(
      genus: json['genus'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenusModelToJson(_GenusModel instance) =>
    <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };

_LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    _LanguageModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$LanguageModelToJson(_LanguageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
