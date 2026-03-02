import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';

abstract class IPokedexLocalDataSource {
  Future<void> saveFavoritePokemon(PokemonDetail pokemon);
  Future<void> removeFavoritePokemon(int id);
  Future<List<PokemonDetail>> getFavoritePokemons();
  Future<bool> isFavorite(int id);
}
