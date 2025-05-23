import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroResolverThemeExtension].
void main() {
  const themeExtension1 = MyoroResolverThemeExtension();
  const themeExtension2 = MyoroResolverThemeExtension();

  test('MyoroResolverThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
  });

  test('MyoroResolverThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
