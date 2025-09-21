import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTabViewThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroTabViewThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.tabButtonBorderRadius, BorderRadius.zero);
    expect(themeExtension.tabButtonIdleColor, colorScheme.onPrimary);
    expect(themeExtension.tabButtonHoverColor, colorScheme.onPrimary.darken(0.2));
    expect(themeExtension.tabButtonTapColor, colorScheme.onPrimary.darken(0.4));
    expect(themeExtension.tabButtonIconSize, kMyoroMultiplier * 5);
    expect(themeExtension.tabButtonTextStyle, textTheme.bodySmall!);
  });

  test('MyoroTabViewThemeExtension.lerp', () {
    final themeExtension1 = MyoroTabViewThemeExtension.fake();
    final themeExtension2 = MyoroTabViewThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.tabButtonBorderRadius,
        BorderRadius.lerp(themeExtension1.tabButtonBorderRadius, themeExtension2.tabButtonBorderRadius, i),
      );
      expect(
        lerpedThemeExtension.tabButtonIdleColor,
        Color.lerp(themeExtension1.tabButtonIdleColor, themeExtension2.tabButtonIdleColor, i),
      );
      expect(
        lerpedThemeExtension.tabButtonHoverColor,
        Color.lerp(themeExtension1.tabButtonHoverColor, themeExtension2.tabButtonHoverColor, i),
      );
      expect(
        lerpedThemeExtension.tabButtonTapColor,
        Color.lerp(themeExtension1.tabButtonTapColor, themeExtension2.tabButtonTapColor, i),
      );
      expect(
        lerpedThemeExtension.tabButtonIconSize,
        lerpDouble(themeExtension1.tabButtonIconSize, themeExtension2.tabButtonIconSize, i),
      );
      expect(
        lerpedThemeExtension.tabButtonTextStyle,
        TextStyle.lerp(themeExtension1.tabButtonTextStyle, themeExtension2.tabButtonTextStyle, i),
      );
    }
  });
}
