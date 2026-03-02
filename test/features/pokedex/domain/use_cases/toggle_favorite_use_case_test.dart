import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/toggle_favorite_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'toggle_favorite_use_case_test.mocks.dart';

@GenerateMocks([PokedexRepository])
void main() {
  late ToggleFavoriteUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = ToggleFavoriteUseCase(mockRepository);
  });

  const tPokemonDetail = PokemonDetail(
    id: 1,
    name: 'bulbasaur',
    imageUrl: 'url',
    types: [],
    weight: 10,
    height: 10,
    abilities: [],
    category: '',
    description: '',
    genderRate: 1,
    speciesUrl: '',
    weaknesses: [],
    isFavorite: false,
  );

  test(
    'should call toggleFavorite on the repository',
    () async {
      // arrange
      when(mockRepository.toggleFavorite(tPokemonDetail))
          .thenAnswer((_) async => {});

      // act
      await useCase(tPokemonDetail);

      // assert
      verify(mockRepository.toggleFavorite(tPokemonDetail));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
