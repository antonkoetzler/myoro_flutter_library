import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroScreenThemeExtension].
void main() {
  const themeExtension1 = MyoroScreenThemeExtension();
  const themeExtension2 = MyoroScreenThemeExtension();

  test('MyoroScreenThemeExtension.copyWith', () {
    themeExtension1.copyWith();
  });

  test('MyoroScreenThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
