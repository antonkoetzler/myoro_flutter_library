import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAppBarThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroAppBarThemeExtension.builder(colorScheme);
    expect(themeExtension.backgroundColor, colorScheme.primary);
    expect(themeExtension.contentPadding, const EdgeInsets.all(10));
  });

  test('MyoroAppBarThemeExtension.lerp', () {
    final themeExtension1 = MyoroAppBarThemeExtension.fake();
    final themeExtension2 = MyoroAppBarThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.backgroundColor,
        Color.lerp(themeExtension1.backgroundColor, themeExtension2.backgroundColor, i),
      );
      expect(
        lerpedThemeExtension.contentPadding,
        EdgeInsets.lerp(themeExtension1.contentPadding, themeExtension2.contentPadding, i),
      );
    }
  });
}
