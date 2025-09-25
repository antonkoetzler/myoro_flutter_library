import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroDecorationThemeExtension', () {
    test('MyoroDecorationThemeExtension.builder', () {
      final isDarkMode = faker.randomGenerator.boolean();
      final colorScheme = createMyoroColorScheme(isDarkMode);
      final themeExtension = MyoroDecorationThemeExtension.builder(isDarkMode, colorScheme);

      expect(themeExtension.primaryIdleBackgroundColor, colorScheme.primary);
      expect(
        themeExtension.primaryHoverBackgroundColor,
        isDarkMode
            ? colorScheme.onPrimary.darken(MyoroDecorationThemeExtension.primaryHoverBackgroundColorFactor)
            : colorScheme.onPrimary.brighten(MyoroDecorationThemeExtension.primaryHoverBackgroundColorFactor),
      );
      expect(
        themeExtension.primaryTapBackgroundColor,
        isDarkMode
            ? colorScheme.onPrimary.darken(MyoroDecorationThemeExtension.primaryTapBackgroundColorFactor)
            : colorScheme.onPrimary.brighten(MyoroDecorationThemeExtension.primaryTapBackgroundColorFactor),
      );
      expect(themeExtension.secondaryIdleBackgroundColor, colorScheme.onPrimary);
      expect(
        themeExtension.secondaryHoverBackgroundColor,
        isDarkMode
            ? colorScheme.onPrimary.darken(MyoroDecorationThemeExtension.secondaryHoverBackgroundColorFactor)
            : colorScheme.onPrimary.brighten(MyoroDecorationThemeExtension.secondaryHoverBackgroundColorFactor),
      );
      expect(
        themeExtension.secondaryTapBackgroundColor,
        isDarkMode
            ? colorScheme.onPrimary.darken(MyoroDecorationThemeExtension.secondaryTapBackgroundColorFactor)
            : colorScheme.onPrimary.brighten(MyoroDecorationThemeExtension.secondaryTapBackgroundColorFactor),
      );
      expect(themeExtension.primaryContentColor, colorScheme.onPrimary);
      expect(themeExtension.secondaryContentColor, colorScheme.primary);
      expect(themeExtension.borderWidth, kMyoroBorderWidth);
      expect(themeExtension.borderColor, colorScheme.onPrimary);
      expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadius));
    });

    test('MyoroDecorationThemeExtension.lerp', () {
      for (double i = 0; i < 1; i += 0.1) {
        final themeExtension1 = MyoroDecorationThemeExtension.fake();
        final themeExtension2 = MyoroDecorationThemeExtension.fake();
        final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
        expect(
          lerpedThemeExtension.primaryIdleBackgroundColor,
          Color.lerp(themeExtension1.primaryIdleBackgroundColor, themeExtension2.primaryIdleBackgroundColor, i),
        );
        expect(
          lerpedThemeExtension.primaryHoverBackgroundColor,
          Color.lerp(themeExtension1.primaryHoverBackgroundColor, themeExtension2.primaryHoverBackgroundColor, i),
        );
        expect(
          lerpedThemeExtension.primaryTapBackgroundColor,
          Color.lerp(themeExtension1.primaryTapBackgroundColor, themeExtension2.primaryTapBackgroundColor, i),
        );
        expect(
          lerpedThemeExtension.secondaryIdleBackgroundColor,
          Color.lerp(themeExtension1.secondaryIdleBackgroundColor, themeExtension2.secondaryIdleBackgroundColor, i),
        );
        expect(
          lerpedThemeExtension.secondaryHoverBackgroundColor,
          Color.lerp(themeExtension1.secondaryHoverBackgroundColor, themeExtension2.secondaryHoverBackgroundColor, i),
        );
        expect(
          lerpedThemeExtension.secondaryTapBackgroundColor,
          Color.lerp(themeExtension1.secondaryTapBackgroundColor, themeExtension2.secondaryTapBackgroundColor, i),
        );
        expect(
          lerpedThemeExtension.primaryContentColor,
          Color.lerp(themeExtension1.primaryContentColor, themeExtension2.primaryContentColor, i),
        );
        expect(
          lerpedThemeExtension.secondaryContentColor,
          Color.lerp(themeExtension1.secondaryContentColor, themeExtension2.secondaryContentColor, i),
        );
        expect(
          lerpedThemeExtension.borderWidth,
          lerpDouble(themeExtension1.borderWidth, themeExtension2.borderWidth, i),
        );
        expect(
          lerpedThemeExtension.borderColor,
          Color.lerp(themeExtension1.borderColor, themeExtension2.borderColor, i),
        );
        expect(
          lerpedThemeExtension.borderRadius,
          BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
        );
      }
    });
  });
}
