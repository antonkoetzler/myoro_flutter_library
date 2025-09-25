import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroPieGraphThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroPieGraphThemeExtension.builder(colorScheme);
    expect(themeExtension.itemColor, colorScheme.onPrimary);
    expect(themeExtension.itemRadius, 200);
  });

  test('MyoroPieGraphThemeExtension.lerp', () {
    final themeExtension1 = MyoroPieGraphThemeExtension.fake();
    final themeExtension2 = MyoroPieGraphThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(lerpedThemeExtension.itemColor, Color.lerp(themeExtension1.itemColor, themeExtension2.itemColor, i));
      expect(lerpedThemeExtension.itemRadius, lerpDouble(themeExtension1.itemRadius, themeExtension2.itemRadius, i));
    }
  });
}
