import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type_detail_response.freezed.dart';
part 'pokemon_type_detail_response.g.dart';

@freezed
abstract class PokemonTypeDetailResponse with _$PokemonTypeDetailResponse {
  const factory PokemonTypeDetailResponse({
    @JsonKey(name: 'damage_relations') required DamageRelationsModel damageRelations,
  }) = _PokemonTypeDetailResponse;

  factory PokemonTypeDetailResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeDetailResponseFromJson(json);
}

@freezed
abstract class DamageRelationsModel with _$DamageRelationsModel {
  const factory DamageRelationsModel({
    @JsonKey(name: 'double_damage_from') required List<TypeLinkModel> doubleDamageFrom,
  }) = _DamageRelationsModel;

  factory DamageRelationsModel.fromJson(Map<String, Object?> json) =>
      _$DamageRelationsModelFromJson(json);
}

@freezed
abstract class TypeLinkModel with _$TypeLinkModel {
  const factory TypeLinkModel({
    required String name,
    required String url,
  }) = _TypeLinkModel;

  factory TypeLinkModel.fromJson(Map<String, Object?> json) =>
      _$TypeLinkModelFromJson(json);
}
