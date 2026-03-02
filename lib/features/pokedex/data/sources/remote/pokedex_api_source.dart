import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/commons/networking/dio_client.dart';
import 'package:global66_test/commons/networking/dio_provider.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_detail_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_list_response.dart';

import 'package:global66_test/features/pokedex/data/models/pokemon_species_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_type_detail_response.dart';
import 'package:global66_test/features/pokedex/data/sources/remote/i_pokedex_remote_data_source.dart';

final pokedexApiSourceProvider = Provider<IPokedexRemoteDataSource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return PokedexApiSource(dioClient);
});

class PokedexApiSource implements IPokedexRemoteDataSource {
  final DioClient _dioClient;

  PokedexApiSource(this._dioClient);

  /// Get list of pokemons
  /// GET https://pokeapi.co/api/v2/pokemon
  @override
  Future<PokemonListResponse> getPokemons(
      {int limit = 20, int offset = 0}) async {
    try {
      final response = await _dioClient.dio.get(
        '', // Base URL ends in /pokemon/, so empty string hits the list
        queryParameters: {
          'limit': limit,
          'offset': offset,
        },
      );

      return PokemonListResponse.fromJson(
          response.data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  /// Get pokemon detail by name
  /// GET https://pokeapi.co/api/v2/pokemon/{name}
  @override
  Future<PokemonDetailResponse> getPokemonDetail(String name) async {
    try {
      final response = await _dioClient.dio.get(
        name, // Appends name to base URL
      );

      return PokemonDetailResponse.fromJson(
          response.data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  /// Get pokemon species detail by url
  @override
  Future<PokemonSpeciesResponse> getPokemonSpecies(String url) async {
    try {
      final response = await _dioClient.dio.get(url);

      return PokemonSpeciesResponse.fromJson(
          response.data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  /// Get pokemon type detail by url
  @override
  Future<PokemonTypeDetailResponse> getPokemonTypeDetail(String url) async {
    try {
      final response = await _dioClient.dio.get(url);

      return PokemonTypeDetailResponse.fromJson(
          response.data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
