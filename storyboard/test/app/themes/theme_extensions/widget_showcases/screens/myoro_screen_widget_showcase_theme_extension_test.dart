import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroScreenWidgetShowcaseThemeExtension].
void main() {
  late final MyoroScreenWidgetShowcaseThemeExtension themeExtension1,
      themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroScreenWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroScreenWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroScreenWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      appBarTitleTextStyle: themeExtension2.appBarTitleTextStyle,
      appBarSubtitleTextStyle: themeExtension2.appBarSubtitleTextStyle,
      appBarMenuButtonIcon: themeExtension2.appBarMenuButtonIcon,
      bodyImageBorderRadius: themeExtension2.bodyImageBorderRadius,
      bodyImageSize: themeExtension2.bodyImageSize,
      bodyTextStyle: themeExtension2.bodyTextStyle,
      bodySpacing: themeExtension2.bodySpacing,
    );
    expect(
      copiedThemeExtension.appBarTitleTextStyle,
      themeExtension2.appBarTitleTextStyle,
    );
    expect(
      copiedThemeExtension.appBarSubtitleTextStyle,
      themeExtension2.appBarSubtitleTextStyle,
    );
    expect(
      copiedThemeExtension.appBarMenuButtonIcon,
      themeExtension2.appBarMenuButtonIcon,
    );
    expect(
      copiedThemeExtension.bodyImageBorderRadius,
      themeExtension2.bodyImageBorderRadius,
    );
    expect(copiedThemeExtension.bodyImageSize, themeExtension2.bodyImageSize);
    expect(copiedThemeExtension.bodyTextStyle, themeExtension2.bodyTextStyle);
    expect(copiedThemeExtension.bodySpacing, themeExtension2.bodySpacing);
  });

  test('MyoroScreenWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.appBarTitleTextStyle,
        TextStyle.lerp(
          themeExtension1.appBarTitleTextStyle,
          themeExtension2.appBarTitleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.appBarSubtitleTextStyle,
        TextStyle.lerp(
          themeExtension1.appBarSubtitleTextStyle,
          themeExtension2.appBarSubtitleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.appBarMenuButtonIcon,
        myoroLerp(
          themeExtension1.appBarMenuButtonIcon,
          themeExtension2.appBarMenuButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.bodyImageBorderRadius,
        BorderRadius.lerp(
          themeExtension1.bodyImageBorderRadius,
          themeExtension2.bodyImageBorderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.bodyImageSize,
        lerpDouble(
          themeExtension1.bodyImageSize,
          themeExtension2.bodyImageSize,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.bodyTextStyle,
        TextStyle.lerp(
          themeExtension1.bodyTextStyle,
          themeExtension2.bodyTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.bodySpacing,
        lerpDouble(themeExtension1.bodySpacing, themeExtension2.bodySpacing, i),
      );
    }
  });
}
