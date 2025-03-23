import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [StoryboardAppBarThemeExtension].
void main() {
  late final StoryboardAppBarThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = StoryboardAppBarThemeExtension.fake();
    themeExtension2 = StoryboardAppBarThemeExtension.fake();
  });

  test('StoryboardAppBarThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      titleTextStyle: themeExtension2.titleTextStyle,
      subtitleTextStyle: themeExtension2.subtitleTextStyle,
      showWidgetOptionsButtonIcon: themeExtension2.showWidgetOptionsButtonIcon,
      themeButtonIcon: themeExtension2.themeButtonIcon,
      buttonSpacing: themeExtension2.buttonSpacing,
    );
    expect(copiedThemeExtension.titleTextStyle, themeExtension2.titleTextStyle);
    expect(
      copiedThemeExtension.subtitleTextStyle,
      themeExtension2.subtitleTextStyle,
    );
    expect(
      copiedThemeExtension.showWidgetOptionsButtonIcon,
      themeExtension2.showWidgetOptionsButtonIcon,
    );
    expect(
      copiedThemeExtension.themeButtonIcon,
      themeExtension2.themeButtonIcon,
    );
    expect(copiedThemeExtension.buttonSpacing, themeExtension2.buttonSpacing);
  });

  test('StoryboardAppBarThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(
          themeExtension1.titleTextStyle,
          themeExtension2.titleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.subtitleTextStyle,
        TextStyle.lerp(
          themeExtension1.subtitleTextStyle,
          themeExtension2.subtitleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.showWidgetOptionsButtonIcon,
        myoroLerp(
          themeExtension1.showWidgetOptionsButtonIcon,
          themeExtension2.showWidgetOptionsButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.themeButtonIcon,
        myoroLerp(
          themeExtension1.themeButtonIcon,
          themeExtension2.themeButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonSpacing,
        lerpDouble(
          themeExtension1.buttonSpacing,
          themeExtension2.buttonSpacing,
          i,
        ),
      );
    }
  });
}
