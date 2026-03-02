// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonDetailResponse _$PokemonDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _PokemonDetailResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      weight: (json['weight'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: SpritesModel.fromJson(json['sprites'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilitySlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: SpeciesModel.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonDetailResponseToJson(
        _PokemonDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
      'types': instance.types,
      'sprites': instance.sprites,
      'abilities': instance.abilities,
      'species': instance.species,
    };

_SpeciesModel _$SpeciesModelFromJson(Map<String, dynamic> json) =>
    _SpeciesModel(
      url: json['url'] as String,
    );

Map<String, dynamic> _$SpeciesModelToJson(_SpeciesModel instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_TypeSlotModel _$TypeSlotModelFromJson(Map<String, dynamic> json) =>
    _TypeSlotModel(
      slot: (json['slot'] as num).toInt(),
      type: TypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeSlotModelToJson(_TypeSlotModel instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_TypeModel _$TypeModelFromJson(Map<String, dynamic> json) => _TypeModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TypeModelToJson(_TypeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_SpritesModel _$SpritesModelFromJson(Map<String, dynamic> json) =>
    _SpritesModel(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$SpritesModelToJson(_SpritesModel instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_AbilitySlotModel _$AbilitySlotModelFromJson(Map<String, dynamic> json) =>
    _AbilitySlotModel(
      ability: AbilityModel.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$AbilitySlotModelToJson(_AbilitySlotModel instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

_AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) =>
    _AbilityModel(
      name: json['name'] as String,
    );

Map<String, dynamic> _$AbilityModelToJson(_AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
