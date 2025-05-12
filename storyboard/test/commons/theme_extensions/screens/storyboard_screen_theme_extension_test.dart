import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  late final StoryboardScreenThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = StoryboardScreenThemeExtension.fake();
    themeExtension2 = StoryboardScreenThemeExtension.fake();
  });

  test('StoryboardScreenThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        spacing: themeExtension2.spacing,
        previousPageButtonIcon: themeExtension2.previousPageButtonIcon,
        buttonPadding: themeExtension2.buttonPadding,
        titleTextStyle: themeExtension2.titleTextStyle,
        toggleThemeButtonIcon: themeExtension2.toggleThemeButtonIcon,
      ),
      themeExtension2,
    );
  });

  test('StoryboardScreenThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.previousPageButtonIcon,
        myoroLerp(
          themeExtension1.previousPageButtonIcon,
          themeExtension2.previousPageButtonIcon,
          i,
        ),
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

  test('StoryboardScreenThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'StoryboardScreenThemeExtension(\n'
      '  spacing: ${themeExtension1.spacing},\n'
      '  previousPageButtonIcon: ${themeExtension1.previousPageButtonIcon},\n'
      '  buttonPadding: ${themeExtension1.buttonPadding},\n'
      '  titleTextStyle: ${themeExtension1.titleTextStyle},\n'
      '  toggleThemeButtonIcon: ${themeExtension1.toggleThemeButtonIcon},\n'
      ');',
    );
  });
}
