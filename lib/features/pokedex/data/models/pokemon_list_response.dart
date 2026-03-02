import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_response.freezed.dart';
part 'pokemon_list_response.g.dart';

@freezed
abstract class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse({
    required int count,
    String? next,
    String? previous,
    required List<PokemonSummaryModel> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}

@freezed
abstract class PokemonSummaryModel with _$PokemonSummaryModel {
  const factory PokemonSummaryModel({
    required String name,
    required String url,
  }) = _PokemonSummaryModel;

  factory PokemonSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSummaryModelFromJson(json);
}
