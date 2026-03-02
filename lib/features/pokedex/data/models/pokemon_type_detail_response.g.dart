// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonTypeDetailResponse _$PokemonTypeDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _PokemonTypeDetailResponse(
      damageRelations: DamageRelationsModel.fromJson(
          json['damage_relations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeDetailResponseToJson(
        _PokemonTypeDetailResponse instance) =>
    <String, dynamic>{
      'damage_relations': instance.damageRelations,
    };

_DamageRelationsModel _$DamageRelationsModelFromJson(
        Map<String, dynamic> json) =>
    _DamageRelationsModel(
      doubleDamageFrom: (json['double_damage_from'] as List<dynamic>)
          .map((e) => TypeLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DamageRelationsModelToJson(
        _DamageRelationsModel instance) =>
    <String, dynamic>{
      'double_damage_from': instance.doubleDamageFrom,
    };

_TypeLinkModel _$TypeLinkModelFromJson(Map<String, dynamic> json) =>
    _TypeLinkModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TypeLinkModelToJson(_TypeLinkModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
