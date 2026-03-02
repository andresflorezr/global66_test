import 'package:equatable/equatable.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';

class PokemonSummary extends Equatable {
  final String name;
  final String url;
  final int id; // Extracted from URL
  final List<PokemonType> types; // We need types for the card
  final bool isFavorite;

  const PokemonSummary({
    required this.name,
    required this.url,
    required this.id,
    this.types = const [],
    this.isFavorite = false,
  });

  PokemonSummary copyWith({
    String? name,
    String? url,
    int? id,
    List<PokemonType>? types,
    bool? isFavorite,
  }) {
    return PokemonSummary(
      name: name ?? this.name,
      url: url ?? this.url,
      id: id ?? this.id,
      types: types ?? this.types,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  String get imageUrl =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

  @override
  List<Object?> get props => [name, url, id, types, isFavorite];
}
