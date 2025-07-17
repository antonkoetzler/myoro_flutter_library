import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBarGraphThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroBarGraphThemeExtension.builder(colorScheme, textTheme);

    expect(themeExtension.border, Border.all(width: 2, color: colorScheme.onPrimary));
    expect(themeExtension.barColor, colorScheme.onPrimary);
    expect(themeExtension.barBorderRadius, BorderRadius.zero);
    expect(themeExtension.sideTitleTextStyle, textTheme.bodySmall!);
    expect(themeExtension.sideTitleInterval, 0.2);
    expect(themeExtension.verticalSideTitleReversedSize, 48);
    expect(themeExtension.horizontalSideTitleReversedSize, 22);
  });

  test('MyoroBarGraphThemeExtension.lerp', () {
    final themeExtension1 = MyoroBarGraphThemeExtension.fake();
    final themeExtension2 = MyoroBarGraphThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(lerpedThemeExtension.border, Border.lerp(themeExtension1.border, themeExtension2.border, i));
      expect(lerpedThemeExtension.barColor, Color.lerp(themeExtension1.barColor, themeExtension2.barColor, i));
      expect(
        lerpedThemeExtension.barBorderRadius,
        BorderRadius.lerp(themeExtension1.barBorderRadius, themeExtension2.barBorderRadius, i),
      );
      expect(
        lerpedThemeExtension.sideTitleTextStyle,
        TextStyle.lerp(themeExtension1.sideTitleTextStyle, themeExtension2.sideTitleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.sideTitleInterval,
        lerpDouble(themeExtension1.sideTitleInterval, themeExtension2.sideTitleInterval, i),
      );
      expect(
        lerpedThemeExtension.verticalSideTitleReversedSize,
        lerpDouble(themeExtension1.verticalSideTitleReversedSize, themeExtension2.verticalSideTitleReversedSize, i),
      );
      expect(
        lerpedThemeExtension.horizontalSideTitleReversedSize,
        lerpDouble(themeExtension1.horizontalSideTitleReversedSize, themeExtension2.horizontalSideTitleReversedSize, i),
      );
    }
  });
}
