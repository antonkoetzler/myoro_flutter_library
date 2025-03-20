import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroFormThemeExtension].
void main() {
  const themeExtension = MyoroFormThemeExtension();

  test('MyoroFormThemeExtension.copyWith', () {
    themeExtension.copyWith();
  });

  test('MyoroFormThemeExtension.lerp', () {
    themeExtension.lerp(
      const MyoroFormThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
