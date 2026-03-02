import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_favorite_pokemons_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_favorite_pokemons_use_case_test.mocks.dart';

@GenerateMocks([PokedexRepository])
void main() {
  late GetFavoritePokemonsUseCase useCase;
  late MockPokedexRepository mockRepository;

  setUp(() {
    mockRepository = MockPokedexRepository();
    useCase = GetFavoritePokemonsUseCase(mockRepository);
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
    isFavorite: true,
  );

  final tPokemonList = [tPokemonDetail];

  test(
    'should get list of favorite pokemons from the repository',
    () async {
      // arrange
      when(mockRepository.getFavoritePokemons())
          .thenAnswer((_) async => tPokemonList);

      // act
      final result = await useCase.call();

      // assert
      expect(result, tPokemonList);
      verify(mockRepository.getFavoritePokemons());
      verifyNoMoreInteractions(mockRepository);
    },
  );

  test(
    'should emit list of favorite pokemons when watching',
    () async {
      // arrange
      when(mockRepository.getFavoritePokemons())
          .thenAnswer((_) async => tPokemonList);
      when(mockRepository.onFavoritesChanged)
          .thenAnswer((_) => Stream.fromIterable([null]));

      // act
      final stream = useCase.watch();

      // assert
      expect(stream, emitsInOrder([tPokemonList, tPokemonList]));
    },
  );
}
