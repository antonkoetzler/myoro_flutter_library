import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  test('StoryboardScreenThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = StoryboardScreenThemeExtension.builder(textTheme);
    expect(themeExtension.spacing, 20);
    expect(themeExtension.previousPageButtonIcon, Icons.keyboard_arrow_left);
    expect(themeExtension.buttonPadding, const EdgeInsets.all(3));
    expect(themeExtension.titleTextStyle, textTheme.titleLarge!);
    expect(themeExtension.toggleThemeButtonIcon, Icons.sunny);
  });

  test('StoryboardScreenThemeExtension.lerp', () {
    final themeExtension1 = StoryboardScreenThemeExtension.fake();
    final themeExtension2 = StoryboardScreenThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.previousPageButtonIcon,
        myoroLerp(themeExtension1.previousPageButtonIcon, themeExtension2.previousPageButtonIcon, i),
      );
      expect(
        lerpedThemeExtension.buttonPadding,
        EdgeInsets.lerp(themeExtension1.buttonPadding, themeExtension2.buttonPadding, i),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(themeExtension1.titleTextStyle, themeExtension2.titleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.toggleThemeButtonIcon,
        myoroLerp(themeExtension1.toggleThemeButtonIcon, themeExtension2.toggleThemeButtonIcon, i),
      );
    }
  });
}
