import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCardThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroCardThemeExtension.builder(colorScheme, textTheme);

    expect(themeExtension.backgroundColor, colorScheme.onPrimary.withValues(alpha: 0.1));
    expect(themeExtension.border, Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary));
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadius));
    expect(themeExtension.padding, const EdgeInsets.all(10));
    expect(themeExtension.titleCardSpacing, 10);
    expect(themeExtension.titleTextStyle, textTheme.titleMedium!);
  });

  test('MyoroCardThemeExtension.lerp', () {
    final themeExtension1 = MyoroCardThemeExtension.fake();
    final themeExtension2 = MyoroCardThemeExtension.fake();

    for (double i = 0; i < 1; i += 1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(
        lerpedThemeExtension.backgroundColor,
        Color.lerp(themeExtension1.backgroundColor, themeExtension2.backgroundColor, i),
      );
      expect(lerpedThemeExtension.border, Border.lerp(themeExtension1.border, themeExtension2.border, i));
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(lerpedThemeExtension.padding, EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i));
      expect(
        lerpedThemeExtension.titleCardSpacing,
        lerpDouble(themeExtension1.titleCardSpacing, themeExtension2.titleCardSpacing, i),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(themeExtension1.titleTextStyle, themeExtension2.titleTextStyle, i),
      );
    }
  });
}
