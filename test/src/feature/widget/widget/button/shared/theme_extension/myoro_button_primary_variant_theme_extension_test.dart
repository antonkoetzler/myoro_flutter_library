import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroButtonPrimaryVariantThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final themeExtension = MyoroButtonPrimaryVariantThemeExtension.builder(isDarkMode, colorScheme);
    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;
    expect(themeExtension.backgroundIdleColor, primary);
    expect(
      themeExtension.backgroundHoverColor,
      isDarkMode
          ? onPrimary.darken(MyoroButtonPrimaryVariantThemeExtension.backgroundHoverColorFactor)
          : onPrimary.brighten(MyoroButtonPrimaryVariantThemeExtension.backgroundHoverColorFactor),
    );
    expect(
      themeExtension.backgroundTapColor,
      isDarkMode
          ? onPrimary.darken(MyoroButtonPrimaryVariantThemeExtension.backgroundTapColorFactor)
          : onPrimary.brighten(MyoroButtonPrimaryVariantThemeExtension.backgroundTapColorFactor),
    );
    expect(themeExtension.contentColor, onPrimary);
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadius));
  });

  test('MyoroButtonPrimaryVariantThemeExtension.lerp', () {
    final themeExtension1 = MyoroButtonPrimaryVariantThemeExtension.fake();
    final themeExtension2 = MyoroButtonPrimaryVariantThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.backgroundIdleColor,
        Color.lerp(themeExtension1.backgroundIdleColor, themeExtension2.backgroundIdleColor, i),
      );
      expect(
        lerpedThemeExtension.backgroundHoverColor,
        Color.lerp(themeExtension1.backgroundHoverColor, themeExtension2.backgroundHoverColor, i),
      );
      expect(
        lerpedThemeExtension.backgroundTapColor,
        Color.lerp(themeExtension1.backgroundTapColor, themeExtension2.backgroundTapColor, i),
      );
      expect(
        lerpedThemeExtension.contentColor,
        Color.lerp(themeExtension1.contentColor, themeExtension2.contentColor, i),
      );
      expect(
        lerpedThemeExtension.contentIdleColor,
        Color.lerp(themeExtension1.contentIdleColor, themeExtension2.contentIdleColor, i),
      );
      expect(
        lerpedThemeExtension.contentHoverColor,
        Color.lerp(themeExtension1.contentHoverColor, themeExtension2.contentHoverColor, i),
      );
      expect(
        lerpedThemeExtension.contentTapColor,
        Color.lerp(themeExtension1.contentTapColor, themeExtension2.contentTapColor, i),
      );
      expect(lerpedThemeExtension.borderWidth, lerpDouble(themeExtension1.borderWidth, themeExtension2.borderWidth, i));
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(lerpedThemeExtension.borderColor, Color.lerp(themeExtension1.borderColor, themeExtension2.borderColor, i));
      expect(
        lerpedThemeExtension.borderIdleColor,
        Color.lerp(themeExtension1.borderIdleColor, themeExtension2.borderIdleColor, i),
      );
      expect(
        lerpedThemeExtension.borderHoverColor,
        Color.lerp(themeExtension1.borderHoverColor, themeExtension2.borderHoverColor, i),
      );
      expect(
        lerpedThemeExtension.borderTapColor,
        Color.lerp(themeExtension1.borderTapColor, themeExtension2.borderTapColor, i),
      );
    }
  });
}
