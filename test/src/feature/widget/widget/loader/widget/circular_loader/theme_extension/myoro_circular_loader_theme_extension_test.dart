import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCircularLoaderThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroCircularLoaderThemeExtension.builder(colorScheme);
    expect(themeExtension.color, colorScheme.onPrimary);
    expect(themeExtension.size, 25);
  });

  test('MyoroCircularLoaderThemeExtension.lerp', () {
    final themeExtension1 = MyoroCircularLoaderThemeExtension.fake();
    final themeExtension2 = MyoroCircularLoaderThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.color, Color.lerp(themeExtension1.color, themeExtension2.color, i));
      expect(lerpedThemeExtension.size, lerpDouble(themeExtension1.size, themeExtension2.size, i));
    }
  });
}
