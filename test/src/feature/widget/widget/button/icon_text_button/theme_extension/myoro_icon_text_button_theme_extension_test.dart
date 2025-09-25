import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroIconTextButtonThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final decorationThemeExtension = MyoroDecorationThemeExtension.builder(isDarkMode, colorScheme);
    final themeExtension = MyoroIconTextButtonThemeExtension.builder(decorationThemeExtension);

    expect(themeExtension.backgroundIdleColor, decorationThemeExtension.primaryIdleBackgroundColor);
    expect(themeExtension.backgroundHoverColor, decorationThemeExtension.primaryHoverBackgroundColor);
    expect(themeExtension.backgroundTapColor, decorationThemeExtension.primaryTapBackgroundColor);
    expect(themeExtension.contentIdleColor, decorationThemeExtension.primaryContentColor);
    expect(themeExtension.contentHoverColor, decorationThemeExtension.primaryContentColor);
    expect(themeExtension.contentTapColor, decorationThemeExtension.primaryContentColor);
    expect(themeExtension.borderWidth, null);
    expect(themeExtension.borderRadius, decorationThemeExtension.borderRadius);
    expect(themeExtension.borderIdleColor, null);
    expect(themeExtension.borderHoverColor, null);
    expect(themeExtension.borderTapColor, null);
    expect(themeExtension.contentPadding, const EdgeInsets.all(kMyoroMultiplier * 2));
    expect(themeExtension.spacing, kMyoroMultiplier);
  });

  test('MyoroIconTextButtonThemeExtension.lerp', () {
    final themeExtension1 = MyoroIconTextButtonThemeExtension.fake();
    final themeExtension2 = MyoroIconTextButtonThemeExtension.fake();

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
      expect(
        lerpedThemeExtension.contentPadding,
        EdgeInsets.lerp(themeExtension1.contentPadding, themeExtension2.contentPadding, i),
      );
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
    }
  });
}
