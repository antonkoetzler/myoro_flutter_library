import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroMaterialAppThemeExtension].
void main() {
  const themeExtension1 = MyoroMaterialAppThemeExtension();
  const themeExtension2 = MyoroMaterialAppThemeExtension();

  test('MyoroMaterialAppThemeExtension.copyWith', () {
    themeExtension1.copyWith();
  });

  test('MyoroMaterialAppThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
