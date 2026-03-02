import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/commons/local_storage/shared_preferences_provider.dart';
import 'package:global66_test/features/pokedex/data/sources/local/i_pokedex_local_data_source.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:shared_preferences/shared_preferences.dart';

final pokedexLocalSourceProvider = Provider<IPokedexLocalDataSource>((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  return PokedexLocalSource(sharedPreferences);
});

class PokedexLocalSource implements IPokedexLocalDataSource {
  final SharedPreferences _sharedPreferences;
  static const String _favoritesKey = 'favorite_pokemons';

  PokedexLocalSource(this._sharedPreferences);

  @override
  Future<void> saveFavoritePokemon(PokemonDetail pokemon) async {
    final favorites = _getFavoritesList();

    // Check if already exists to avoid duplicates or update
    final index = favorites.indexWhere((item) => item['id'] == pokemon.id);
    final pokemonMap = _pokemonToMap(pokemon);

    if (index >= 0) {
      favorites[index] = pokemonMap;
    } else {
      favorites.add(pokemonMap);
    }

    await _sharedPreferences.setString(_favoritesKey, jsonEncode(favorites));
  }

  @override
  Future<void> removeFavoritePokemon(int id) async {
    final favorites = _getFavoritesList();
    favorites.removeWhere((item) => item['id'] == id);
    await _sharedPreferences.setString(_favoritesKey, jsonEncode(favorites));
  }

  @override
  Future<List<PokemonDetail>> getFavoritePokemons() async {
    final favorites = _getFavoritesList();
    return favorites.map((e) => _mapToPokemon(e)).toList();
  }

  @override
  Future<bool> isFavorite(int id) async {
    final favorites = _getFavoritesList();
    return favorites.any((item) => item['id'] == id);
  }

  List<Map<String, dynamic>> _getFavoritesList() {
    final String? favoritesJson = _sharedPreferences.getString(_favoritesKey);
    if (favoritesJson == null) return [];

    try {
      final List<dynamic> decoded = jsonDecode(favoritesJson);
      return decoded.cast<Map<String, dynamic>>();
    } catch (e) {
      return [];
    }
  }

  Map<String, dynamic> _pokemonToMap(PokemonDetail pokemon) {
    return {
      'id': pokemon.id,
      'name': pokemon.name,
      'weight': pokemon.weight,
      'height': pokemon.height,
      'types':
          pokemon.types.map((t) => {'name': t.name, 'url': t.url}).toList(),
      'abilities': pokemon.abilities,
      'imageUrl': pokemon.imageUrl,
      'speciesUrl': pokemon.speciesUrl,
      'genderRate': pokemon.genderRate,
      'category': pokemon.category,
      'description': pokemon.description,
      'weaknesses': pokemon.weaknesses,
    };
  }

  PokemonDetail _mapToPokemon(Map<String, dynamic> map) {
    return PokemonDetail(
      id: map['id'] as int,
      name: map['name'] as String,
      weight: map['weight'] as int,
      height: map['height'] as int,
      types: (map['types'] as List)
          .map((t) => PokemonType(name: t['name'], url: t['url']))
          .toList(),
      abilities: List<String>.from(map['abilities']),
      imageUrl: map['imageUrl'] as String,
      speciesUrl: map['speciesUrl'] as String,
      genderRate: map['genderRate'] as int,
      category: map['category'] as String,
      description: map['description'] as String,
      weaknesses: List<String>.from(map['weaknesses']),
      isFavorite: true,
    );
  }
}
