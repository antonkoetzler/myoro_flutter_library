import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCheckboxThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroCheckboxThemeExtension.builder(colorScheme, textTheme);

    expect(themeExtension.checkboxActiveColor, colorScheme.onPrimary);
    expect(themeExtension.checkboxCheckColor, colorScheme.primary);
    expect(themeExtension.checkboxHoverColor, MyoroColors.transparent);
    expect(themeExtension.checkboxFocusColor, MyoroColors.transparent);
    expect(themeExtension.checkboxSplashRadius, 0);
    expect(themeExtension.labelTextStyle, textTheme.bodySmall!);
    expect(themeExtension.spacing, kMyoroMultiplier);
  });

  test('MyoroCheckboxThemeExtension.lerp', () {
    final themeExtension1 = MyoroCheckboxThemeExtension.fake();
    final themeExtension2 = MyoroCheckboxThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(
        lerpedThemeExtension.checkboxActiveColor,
        Color.lerp(themeExtension1.checkboxActiveColor, themeExtension2.checkboxActiveColor, i),
      );
      expect(
        lerpedThemeExtension.checkboxCheckColor,
        Color.lerp(themeExtension1.checkboxCheckColor, themeExtension2.checkboxCheckColor, i),
      );
      expect(
        lerpedThemeExtension.checkboxHoverColor,
        Color.lerp(themeExtension1.checkboxHoverColor, themeExtension2.checkboxHoverColor, i),
      );
      expect(
        lerpedThemeExtension.checkboxFocusColor,
        Color.lerp(themeExtension1.checkboxFocusColor, themeExtension2.checkboxFocusColor, i),
      );
      expect(
        lerpedThemeExtension.checkboxSplashRadius,
        lerpDouble(themeExtension1.checkboxSplashRadius, themeExtension2.checkboxSplashRadius, i),
      );
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(themeExtension1.labelTextStyle, themeExtension2.labelTextStyle, i),
      );
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
    }
  });
}
