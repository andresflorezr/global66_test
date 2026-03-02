import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';

final getPokemonListWithDetailsUseCaseProvider = Provider<GetPokemonListWithDetailsUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return GetPokemonListWithDetailsUseCase(repository);
});

class GetPokemonListWithDetailsUseCase {
  final PokedexRepository _repository;

  GetPokemonListWithDetailsUseCase(this._repository);

  Future<List<PokemonDetail>> call({int limit = 20, int offset = 0}) async {
    // 1. Get the list of pokemon summaries
    final summaryList = await _repository.getPokemons(limit: limit, offset: offset);

    // 2. For each summary, fetch the detail (in parallel for performance)
    final detailFutures = summaryList.map((summary) {
      return _repository.getPokemonDetail(summary.name);
    });

    // 3. Wait for all details to be fetched
    final details = await Future.wait(detailFutures);

    return details;
  }
}
