import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroButtonThemeExtension.fromVariant', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final buttonPrimaryVariantThemeExtension = MyoroButtonPrimaryVariantThemeExtension.builder(isDarkMode, colorScheme);
    final buttonThemeExtension = MyoroButtonThemeExtension.fromVariant(buttonPrimaryVariantThemeExtension);
    expect(buttonThemeExtension.backgroundColor, buttonPrimaryVariantThemeExtension.backgroundColor);
    expect(buttonThemeExtension.backgroundIdleColor, buttonPrimaryVariantThemeExtension.backgroundIdleColor);
    expect(buttonThemeExtension.backgroundHoverColor, buttonPrimaryVariantThemeExtension.backgroundHoverColor);
    expect(buttonThemeExtension.backgroundTapColor, buttonPrimaryVariantThemeExtension.backgroundTapColor);
    expect(buttonThemeExtension.contentColor, buttonPrimaryVariantThemeExtension.contentColor);
    expect(buttonThemeExtension.contentIdleColor, buttonPrimaryVariantThemeExtension.contentIdleColor);
    expect(buttonThemeExtension.contentHoverColor, buttonPrimaryVariantThemeExtension.contentHoverColor);
    expect(buttonThemeExtension.contentTapColor, buttonPrimaryVariantThemeExtension.contentTapColor);
    expect(buttonThemeExtension.borderWidth, buttonPrimaryVariantThemeExtension.borderWidth);
    expect(buttonThemeExtension.borderRadius, buttonPrimaryVariantThemeExtension.borderRadius);
    expect(buttonThemeExtension.borderColor, buttonPrimaryVariantThemeExtension.borderColor);
    expect(buttonThemeExtension.borderIdleColor, buttonPrimaryVariantThemeExtension.borderIdleColor);
    expect(buttonThemeExtension.borderHoverColor, buttonPrimaryVariantThemeExtension.borderHoverColor);
    expect(buttonThemeExtension.borderTapColor, buttonPrimaryVariantThemeExtension.borderTapColor);
  });

  test('MyoroButtonThemeExtension.fromIconTextButtonThemeExtension', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final buttonPrimaryVariantThemeExtension = MyoroButtonPrimaryVariantThemeExtension.builder(isDarkMode, colorScheme);
    final iconTextButtonThemeExtension = MyoroIconTextButtonThemeExtension.fromVariant(
      buttonPrimaryVariantThemeExtension,
    );
    final buttonThemeExtension = MyoroButtonThemeExtension.fromIconTextButtonThemeExtension(
      iconTextButtonThemeExtension,
    );
    expect(buttonThemeExtension.backgroundColor, iconTextButtonThemeExtension.backgroundColor);
    expect(buttonThemeExtension.backgroundIdleColor, iconTextButtonThemeExtension.backgroundIdleColor);
    expect(buttonThemeExtension.backgroundHoverColor, iconTextButtonThemeExtension.backgroundHoverColor);
    expect(buttonThemeExtension.backgroundTapColor, iconTextButtonThemeExtension.backgroundTapColor);
    expect(buttonThemeExtension.contentColor, iconTextButtonThemeExtension.contentColor);
    expect(buttonThemeExtension.contentIdleColor, iconTextButtonThemeExtension.contentIdleColor);
    expect(buttonThemeExtension.contentHoverColor, iconTextButtonThemeExtension.contentHoverColor);
    expect(buttonThemeExtension.contentTapColor, iconTextButtonThemeExtension.contentTapColor);
    expect(buttonThemeExtension.borderWidth, iconTextButtonThemeExtension.borderWidth);
    expect(buttonThemeExtension.borderRadius, iconTextButtonThemeExtension.borderRadius);
    expect(buttonThemeExtension.borderColor, iconTextButtonThemeExtension.borderColor);
    expect(buttonThemeExtension.borderIdleColor, iconTextButtonThemeExtension.borderIdleColor);
    expect(buttonThemeExtension.borderHoverColor, iconTextButtonThemeExtension.borderHoverColor);
    expect(buttonThemeExtension.borderTapColor, iconTextButtonThemeExtension.borderTapColor);
  });

  test('MyoroButtonThemeExtension.lerp', () {
    final themeExtension1 = MyoroButtonThemeExtension.fake();
    final themeExtension2 = MyoroButtonThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.backgroundColor,
        Color.lerp(themeExtension1.backgroundColor, themeExtension2.backgroundColor, i),
      );
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
