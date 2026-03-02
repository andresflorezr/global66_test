import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:global66_test/commons/local_storage/shared_preferences_provider.dart';

void main() {
  test('sharedPreferencesProvider should throw UnimplementedError by default',
      () {
    // arrange
    final container = ProviderContainer();
    addTearDown(container.dispose);

    // act & assert
    expect(
      () => container.read(sharedPreferencesProvider),
      throwsA(isA<UnimplementedError>()),
    );
  });
}
