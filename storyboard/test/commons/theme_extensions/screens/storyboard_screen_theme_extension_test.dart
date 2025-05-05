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
        previousPageButtonPadding: themeExtension2.previousPageButtonPadding,
        headerTitleTextStyle: themeExtension2.headerTitleTextStyle,
        headerSubtitleTextStyle: themeExtension2.headerSubtitleTextStyle,
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
        lerpedThemeExtension.previousPageButtonPadding,
        EdgeInsets.lerp(
          themeExtension1.previousPageButtonPadding,
          themeExtension2.previousPageButtonPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.headerTitleTextStyle,
        TextStyle.lerp(
          themeExtension1.headerTitleTextStyle,
          themeExtension2.headerTitleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.headerSubtitleTextStyle,
        TextStyle.lerp(
          themeExtension1.headerSubtitleTextStyle,
          themeExtension2.headerSubtitleTextStyle,
          i,
        ),
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
      '  previousPageButtonPadding: ${themeExtension1.previousPageButtonPadding},\n'
      '  headerTitleTextStyle: ${themeExtension1.headerTitleTextStyle},\n'
      '  headerSubtitleTextStyle: ${themeExtension1.headerSubtitleTextStyle},\n'
      '  toggleThemeButtonIcon: ${themeExtension1.toggleThemeButtonIcon},\n'
      ');',
    );
  });
}
