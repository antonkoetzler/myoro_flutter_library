import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFeedbackThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroFeedbackThemeExtension.builder(textTheme);
    expect(themeExtension.spacing, kMyoroMultiplier * 2);
    expect(themeExtension.iconSize, kMyoroMultiplier * 30);
    expect(themeExtension.titleTextStyle, textTheme.titleLarge!);
    expect(themeExtension.subtitleTextStyle, textTheme.bodyMedium!);
  });

  test('MyoroFeedbackThemeExtension.lerp', () {
    final themeExtension1 = MyoroFeedbackThemeExtension.fake();
    final themeExtension2 = MyoroFeedbackThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(lerpedThemeExtension.iconSize, lerpDouble(themeExtension1.iconSize, themeExtension2.iconSize, i));
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(themeExtension1.titleTextStyle, themeExtension2.titleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.subtitleTextStyle,
        TextStyle.lerp(themeExtension1.subtitleTextStyle, themeExtension2.subtitleTextStyle, i),
      );
    }
  });
}
