import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_summary.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_pokemon_list_with_details_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_pokemon_list_with_details_use_case_test.mocks.dart';

@GenerateMocks([PokedexRepository])
void main() {
  late GetPokemonListWithDetailsUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = GetPokemonListWithDetailsUseCase(mockRepository);
  });

  final tPokemonSummary = PokemonSummary(
    id: 1,
    name: 'bulbasaur',
    url: 'https://pokeapi.co/api/v2/pokemon/1/',
    types: [],
    isFavorite: false,
  );

  final tPokemonDetail = PokemonDetail(
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
      'should get list of pokemon details from the repository by chaining calls',
      () async {
    // arrange
    when(mockRepository.getPokemons(limit: 20, offset: 0))
        .thenAnswer((_) async => [tPokemonSummary]);
    when(mockRepository.getPokemonDetail('bulbasaur'))
        .thenAnswer((_) async => tPokemonDetail);

    // act
    final result = await useCase.call(limit: 20, offset: 0);

    // assert
    expect(result, [tPokemonDetail]);
    verify(mockRepository.getPokemons(limit: 20, offset: 0));
    verify(mockRepository.getPokemonDetail('bulbasaur'));
    verifyNoMoreInteractions(mockRepository);
  });
}
