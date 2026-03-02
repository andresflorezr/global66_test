import 'package:equatable/equatable.dart';

class PokemonType extends Equatable {
  final String name;
  final String url;

  const PokemonType({
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [name, url];
}

class PokemonDetail extends Equatable {
  final int id;
  final String name;
  final int weight;
  final int height;
  final List<PokemonType> types;
  final List<String> abilities;
  final String imageUrl;
  final String speciesUrl;
  final int genderRate;
  final String category;
  final String description;
  final List<String> weaknesses;
  final bool isFavorite;

  const PokemonDetail({
    required this.id,
    required this.name,
    required this.weight,
    required this.height,
    required this.types,
    required this.abilities,
    required this.imageUrl,
    required this.speciesUrl,
    required this.genderRate,
    required this.category,
    required this.description,
    required this.weaknesses,
    this.isFavorite = false,
  });

  PokemonDetail copyWith({
    int? id,
    String? name,
    int? weight,
    int? height,
    List<PokemonType>? types,
    List<String>? abilities,
    String? imageUrl,
    String? speciesUrl,
    int? genderRate,
    String? category,
    String? description,
    List<String>? weaknesses,
    bool? isFavorite,
  }) {
    return PokemonDetail(
      id: id ?? this.id,
      name: name ?? this.name,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      types: types ?? this.types,
      abilities: abilities ?? this.abilities,
      imageUrl: imageUrl ?? this.imageUrl,
      speciesUrl: speciesUrl ?? this.speciesUrl,
      genderRate: genderRate ?? this.genderRate,
      category: category ?? this.category,
      description: description ?? this.description,
      weaknesses: weaknesses ?? this.weaknesses,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        weight,
        height,
        types,
        abilities,
        imageUrl,
        speciesUrl,
        genderRate,
        category,
        description,
        weaknesses,
        isFavorite,
      ];
}
