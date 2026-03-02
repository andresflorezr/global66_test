import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_response.freezed.dart';
part 'pokemon_detail_response.g.dart';

@freezed
abstract class PokemonDetailResponse with _$PokemonDetailResponse {
  const factory PokemonDetailResponse({
    required int id,
    required String name,
    required int weight,
    required int height,
    required List<TypeSlotModel> types,
    required SpritesModel sprites,
    required List<AbilitySlotModel> abilities,
    required SpeciesModel species,
  }) = _PokemonDetailResponse;

  factory PokemonDetailResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonDetailResponseFromJson(json);
}

@freezed
abstract class SpeciesModel with _$SpeciesModel {
  const factory SpeciesModel({
    required String url,
  }) = _SpeciesModel;

  factory SpeciesModel.fromJson(Map<String, Object?> json) =>
      _$SpeciesModelFromJson(json);
}

@freezed
abstract class TypeSlotModel with _$TypeSlotModel {
  const factory TypeSlotModel({
    required int slot,
    required TypeModel type,
  }) = _TypeSlotModel;

  factory TypeSlotModel.fromJson(Map<String, Object?> json) =>
      _$TypeSlotModelFromJson(json);
}

@freezed
abstract class TypeModel with _$TypeModel {
  const factory TypeModel({
    required String name,
    required String url,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, Object?> json) =>
      _$TypeModelFromJson(json);
}

@freezed
abstract class SpritesModel with _$SpritesModel {
  const factory SpritesModel({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _SpritesModel;

  factory SpritesModel.fromJson(Map<String, Object?> json) =>
      _$SpritesModelFromJson(json);
}

@freezed
abstract class AbilitySlotModel with _$AbilitySlotModel {
  const factory AbilitySlotModel({
    required AbilityModel ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _AbilitySlotModel;

  factory AbilitySlotModel.fromJson(Map<String, Object?> json) =>
      _$AbilitySlotModelFromJson(json);
}

@freezed
abstract class AbilityModel with _$AbilityModel {
  const factory AbilityModel({
    required String name,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, Object?> json) =>
      _$AbilityModelFromJson(json);
}
