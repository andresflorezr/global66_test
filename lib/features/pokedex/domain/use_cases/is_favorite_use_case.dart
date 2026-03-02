import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/data/repositories/pokedex_repository_impl.dart';

final isFavoriteUseCaseProvider = Provider<IsFavoriteUseCase>((ref) {
  final repository = ref.watch(pokedexRepositoryProvider);
  return IsFavoriteUseCase(repository);
});

class IsFavoriteUseCase {
  final PokedexRepository _repository;

  IsFavoriteUseCase(this._repository);

  Future<bool> call(int id) async {
    return _repository.isFavorite(id);
  }
}
