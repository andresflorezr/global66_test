import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_pokemon_list_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([PokedexRepository])
import 'get_pokemon_list_use_case_test.mocks.dart';

void main() {
  late GetPokemonListUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = GetPokemonListUseCase(mockRepository);
  });

  const tPokemonSummary = PokemonSummary(
    id: 1,
    name: 'bulbasaur',
    url: 'https://pokeapi.co/api/v2/pokemon/1/',
    types: [],
    isFavorite: false,
  );

  const tLimit = 20;
  const tOffset = 0;

  test(
    'should get list of pokemon summaries from the repository',
    () async {
      // arrange
      when(mockRepository.getPokemons(limit: tLimit, offset: tOffset))
          .thenAnswer((_) async => [tPokemonSummary]);

      // act
      final result = await useCase.call(limit: tLimit, offset: tOffset);

      // assert
      expect(result, [tPokemonSummary]);
      verify(mockRepository.getPokemons(limit: tLimit, offset: tOffset));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
