import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/is_favorite_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'is_favorite_use_case_test.mocks.dart';

@GenerateMocks([PokedexRepository])
void main() {
  late IsFavoriteUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = IsFavoriteUseCase(mockRepository);
  });

  const tPokemonId = 1;

  test(
    'should return true when pokemon is favorite',
    () async {
      // arrange
      when(mockRepository.isFavorite(tPokemonId))
          .thenAnswer((_) async => true);

      // act
      final result = await useCase.call(tPokemonId);

      // assert
      expect(result, true);
      verify(mockRepository.isFavorite(tPokemonId));
      verifyNoMoreInteractions(mockRepository);
    },
  );

  test(
    'should return false when pokemon is not favorite',
    () async {
      // arrange
      when(mockRepository.isFavorite(tPokemonId))
          .thenAnswer((_) async => false);

      // act
      final result = await useCase.call(tPokemonId);

      // assert
      expect(result, false);
      verify(mockRepository.isFavorite(tPokemonId));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
