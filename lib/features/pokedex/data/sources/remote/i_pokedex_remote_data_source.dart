import 'package:global66_test/features/pokedex/data/models/pokemon_detail_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_list_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_species_response.dart';
import 'package:global66_test/features/pokedex/data/models/pokemon_type_detail_response.dart';

abstract class IPokedexRemoteDataSource {
  Future<PokemonListResponse> getPokemons({int limit = 20, int offset = 0});
  Future<PokemonDetailResponse> getPokemonDetail(String name);
  Future<PokemonSpeciesResponse> getPokemonSpecies(String url);
  Future<PokemonTypeDetailResponse> getPokemonTypeDetail(String url);
}
