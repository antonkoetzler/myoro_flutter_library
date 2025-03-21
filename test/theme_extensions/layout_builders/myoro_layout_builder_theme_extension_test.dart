import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroLayoutBuilderThemeExtension].
void main() {
  const themeExtension1 = MyoroLayoutBuilderThemeExtension();
  const themeExtension2 = MyoroLayoutBuilderThemeExtension();

  test('MyoroLayoutBuilderThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
  });

  test('MyoroLayoutBuilderThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
