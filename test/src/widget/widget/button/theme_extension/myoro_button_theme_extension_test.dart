import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroButtonThemeExtension.builder', () {
    const primaryHoverBackgroundColorFactor = 0.7;
    const primaryTapBackgroundColorFactor = 0.5;
    const secondaryHoverBackgroundColorFactor = 0.15;
    const secondaryTapBackgroundColorFactor = 0.2;

    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final onPrimary = colorScheme.onPrimary;

    final themeExtension = MyoroButtonThemeExtension.builder(isDarkMode, colorScheme);
    expect(themeExtension.border, Border.all(width: kMyoroBorderLength, color: onPrimary));
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadiusLength));
    expect(themeExtension.primaryIdleBackgroundColor, colorScheme.primary);
    expect(
      themeExtension.primaryHoverBackgroundColor,
      isDarkMode
          ? onPrimary.darken(primaryHoverBackgroundColorFactor)
          : onPrimary.brighten(primaryHoverBackgroundColorFactor),
    );
    expect(
      themeExtension.primaryTapBackgroundColor,
      isDarkMode
          ? onPrimary.darken(primaryTapBackgroundColorFactor)
          : onPrimary.brighten(primaryTapBackgroundColorFactor),
    );
    expect(themeExtension.primaryIdleContentColor, onPrimary);
    expect(themeExtension.primaryHoverContentColor, onPrimary);
    expect(themeExtension.primaryTapContentColor, onPrimary);
    expect(themeExtension.secondaryIdleBackgroundColor, onPrimary);
    expect(
      themeExtension.secondaryHoverBackgroundColor,
      isDarkMode
          ? onPrimary.darken(secondaryHoverBackgroundColorFactor)
          : onPrimary.brighten(secondaryHoverBackgroundColorFactor),
    );
    expect(
      themeExtension.secondaryTapBackgroundColor,
      isDarkMode
          ? onPrimary.darken(secondaryTapBackgroundColorFactor)
          : onPrimary.brighten(secondaryTapBackgroundColorFactor),
    );
    expect(themeExtension.secondaryIdleContentColor, colorScheme.primary);
    expect(themeExtension.secondaryHoverContentColor, colorScheme.primary);
    expect(themeExtension.secondaryTapContentColor, colorScheme.primary);
  });

  test('MyoroButtonThemeExtension.lerp', () {
    final themeExtension1 = MyoroButtonThemeExtension.fake();
    final themeExtension2 = MyoroButtonThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(lerpedThemeExtension.border, BoxBorder.lerp(themeExtension1.border, themeExtension2.border, i));
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
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
        lerpedThemeExtension.primaryIdleContentColor,
        Color.lerp(themeExtension1.primaryIdleContentColor, themeExtension2.primaryIdleContentColor, i),
      );
      expect(
        lerpedThemeExtension.primaryHoverContentColor,
        Color.lerp(themeExtension1.primaryHoverContentColor, themeExtension2.primaryHoverContentColor, i),
      );
      expect(
        lerpedThemeExtension.primaryTapContentColor,
        Color.lerp(themeExtension1.primaryTapContentColor, themeExtension2.primaryTapContentColor, i),
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
        lerpedThemeExtension.secondaryIdleContentColor,
        Color.lerp(themeExtension1.secondaryIdleContentColor, themeExtension2.secondaryIdleContentColor, i),
      );
      expect(
        lerpedThemeExtension.secondaryHoverContentColor,
        Color.lerp(themeExtension1.secondaryHoverContentColor, themeExtension2.secondaryHoverContentColor, i),
      );
      expect(
        lerpedThemeExtension.secondaryTapContentColor,
        Color.lerp(themeExtension1.secondaryTapContentColor, themeExtension2.secondaryTapContentColor, i),
      );
    }
  });
}
