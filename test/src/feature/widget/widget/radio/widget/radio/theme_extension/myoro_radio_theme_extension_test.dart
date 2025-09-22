import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroRadioThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroRadioThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.activeColor, colorScheme.onPrimary);
    expect(themeExtension.hoverColor, colorScheme.onPrimary.withValues(alpha: 0.3));
    expect(themeExtension.labelTextStyle, textTheme.headlineSmall!);
    expect(themeExtension.spacing, 5);
    expect(themeExtension.splashRadius, 15);
  });

  test('MyoroRadioThemeExtension.lerp', () {
    final themeExtension1 = MyoroRadioThemeExtension.fake();
    final themeExtension2 = MyoroRadioThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.activeColor, Color.lerp(themeExtension1.activeColor, themeExtension2.activeColor, i));
      expect(lerpedThemeExtension.hoverColor, Color.lerp(themeExtension1.hoverColor, themeExtension2.hoverColor, i));
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(themeExtension1.labelTextStyle, themeExtension2.labelTextStyle, i),
      );
      expect(lerpedThemeExtension.spacing, myoroDoubleLerp(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.splashRadius,
        myoroDoubleLerp(themeExtension1.splashRadius, themeExtension2.splashRadius, i),
      );
    }
  });
}
