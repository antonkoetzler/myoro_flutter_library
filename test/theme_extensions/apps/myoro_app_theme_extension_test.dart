import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroAppThemeExtension].
void main() {
  const themeExtension1 = MyoroAppThemeExtension();
  const themeExtension2 = MyoroAppThemeExtension();

  test('MyoroAppThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
  });

  test('MyoroAppThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
