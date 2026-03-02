import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_pokemon_detail_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([PokedexRepository])
import 'get_pokemon_detail_use_case_test.mocks.dart';

void main() {
  late GetPokemonDetailUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = GetPokemonDetailUseCase(mockRepository);
  });

  const tPokemonName = 'bulbasaur';
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
    'should get pokemon detail from the repository',
    () async {
      // arrange
      when(mockRepository.getPokemonDetail(tPokemonName))
          .thenAnswer((_) async => tPokemonDetail);

      // act
      final result = await useCase.call(tPokemonName);

      // assert
      expect(result, tPokemonDetail);
      verify(mockRepository.getPokemonDetail(tPokemonName));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
