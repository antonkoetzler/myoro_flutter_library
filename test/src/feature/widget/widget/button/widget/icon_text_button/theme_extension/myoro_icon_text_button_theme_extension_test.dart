import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroIconTextButtonThemeExtension.fromVariant', () {
    final buttonPrimaryVariantThemeExtension = MyoroButtonPrimaryVariantThemeExtension.builder(
      faker.randomGenerator.boolean(),
      createMyoroColorScheme(faker.randomGenerator.boolean()),
    );
    final themeExtension = MyoroIconTextButtonThemeExtension.fromVariant(buttonPrimaryVariantThemeExtension);
    expect(themeExtension.backgroundColor, buttonPrimaryVariantThemeExtension.backgroundColor);
    expect(themeExtension.backgroundIdleColor, buttonPrimaryVariantThemeExtension.backgroundIdleColor);
    expect(themeExtension.backgroundHoverColor, buttonPrimaryVariantThemeExtension.backgroundHoverColor);
    expect(themeExtension.backgroundTapColor, buttonPrimaryVariantThemeExtension.backgroundTapColor);
    expect(themeExtension.contentColor, buttonPrimaryVariantThemeExtension.contentColor);
    expect(themeExtension.contentIdleColor, buttonPrimaryVariantThemeExtension.contentIdleColor);
    expect(themeExtension.contentHoverColor, buttonPrimaryVariantThemeExtension.contentHoverColor);
    expect(themeExtension.contentTapColor, buttonPrimaryVariantThemeExtension.contentTapColor);
    expect(themeExtension.borderWidth, buttonPrimaryVariantThemeExtension.borderWidth);
    expect(themeExtension.borderRadius, buttonPrimaryVariantThemeExtension.borderRadius);
    expect(themeExtension.borderColor, buttonPrimaryVariantThemeExtension.borderColor);
    expect(themeExtension.borderIdleColor, buttonPrimaryVariantThemeExtension.borderIdleColor);
    expect(themeExtension.borderHoverColor, buttonPrimaryVariantThemeExtension.borderHoverColor);
    expect(themeExtension.borderTapColor, buttonPrimaryVariantThemeExtension.borderTapColor);
    expect(themeExtension.contentPadding, MyoroIconTextButtonThemeExtension.contentPaddingDefaultValue);
    expect(themeExtension.spacing, MyoroIconTextButtonThemeExtension.spacingDefaultValue);
  });

  test('MyoroIconTextButtonThemeExtension.lerp', () {
    final themeExtension1 = MyoroIconTextButtonThemeExtension.fake();
    final themeExtension2 = MyoroIconTextButtonThemeExtension.fake();

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
