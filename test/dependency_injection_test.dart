import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_pokemon_detail_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:global66_test/commons/local_storage/shared_preferences_provider.dart';

void main() {
  test('Dependency Injection Test', () async {
    SharedPreferences.setMockInitialValues({});
    final sharedPreferences = await SharedPreferences.getInstance();

    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
    );
    addTearDown(container.dispose);

    final useCase = container.read(getPokemonDetailUseCaseProvider);
    expect(useCase, isA<GetPokemonDetailUseCase>());
  });
}
