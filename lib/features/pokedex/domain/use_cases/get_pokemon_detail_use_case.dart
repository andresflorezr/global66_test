import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';

final getPokemonDetailUseCaseProvider =
    Provider<GetPokemonDetailUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return GetPokemonDetailUseCase(repository);
});

class GetPokemonDetailUseCase {
  final PokedexRepository _repository;

  GetPokemonDetailUseCase(this._repository);

  Future<PokemonDetail> call(String name) {
    return _repository.getPokemonDetail(name);
  }
}
