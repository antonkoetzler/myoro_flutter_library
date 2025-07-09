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

    expect(themeExtension.activeColor, colorScheme.onPrimary);
    expect(themeExtension.checkColor, colorScheme.primary);
    expect(themeExtension.hoverColor, MyoroColors.transparent);
    expect(themeExtension.focusColor, MyoroColors.transparent);
    expect(themeExtension.splashRadius, 0);
    expect(themeExtension.labelTextStyle, textTheme.bodySmall!);
    expect(themeExtension.spacing, 5);
  });

  test('MyoroCheckboxThemeExtension.lerp', () {
    final themeExtension1 = MyoroCheckboxThemeExtension.fake();
    final themeExtension2 = MyoroCheckboxThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(lerpedThemeExtension.activeColor, Color.lerp(themeExtension1.activeColor, themeExtension2.activeColor, i));
      expect(lerpedThemeExtension.checkColor, Color.lerp(themeExtension1.checkColor, themeExtension2.checkColor, i));
      expect(lerpedThemeExtension.hoverColor, Color.lerp(themeExtension1.hoverColor, themeExtension2.hoverColor, i));
      expect(lerpedThemeExtension.focusColor, Color.lerp(themeExtension1.focusColor, themeExtension2.focusColor, i));
      expect(
        lerpedThemeExtension.splashRadius,
        lerpDouble(themeExtension1.splashRadius, themeExtension2.splashRadius, i),
      );
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(themeExtension1.labelTextStyle, themeExtension2.labelTextStyle, i),
      );
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
    }
  });
}
