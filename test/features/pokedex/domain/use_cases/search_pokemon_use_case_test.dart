import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/search_pokemon_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_pokemon_use_case_test.mocks.dart';

@GenerateMocks([PokedexRepository])
void main() {
  late SearchPokemonUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = SearchPokemonUseCase(mockRepository);
  });

  const tPokemonName = 'Pikachu';
  final tPokemonNameLowerCase = tPokemonName.toLowerCase();

  const tPokemonDetail = PokemonDetail(
    id: 25,
    name: 'pikachu',
    imageUrl: 'url',
    types: [],
    weight: 60,
    height: 4,
    abilities: [],
    category: '',
    description: '',
    genderRate: 1,
    speciesUrl: '',
    weaknesses: [],
    isFavorite: false,
  );

  test(
    'should get pokemon detail from the repository using lowercase name',
    () async {
      // arrange
      when(mockRepository.getPokemonDetail(tPokemonNameLowerCase))
          .thenAnswer((_) async => tPokemonDetail);

      // act
      final result = await useCase.call(tPokemonName);

      // assert
      expect(result, tPokemonDetail);
      verify(mockRepository.getPokemonDetail(tPokemonNameLowerCase));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
