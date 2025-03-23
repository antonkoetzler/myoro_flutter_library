import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroAppBarWidgetShowcaseThemeExtension].
void main() {
  late final MyoroAppBarWidgetShowcaseThemeExtension themeExtension1;
  late final MyoroAppBarWidgetShowcaseThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroAppBarWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroAppBarWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroAppBarWidgetShowcaseThemeExtension.copyWith', () {
    MyoroAppBarWidgetShowcaseThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      mockAppLogoIcon: themeExtension2.mockAppLogoIcon,
      mockAppTitleTextStyle: themeExtension2.mockAppTitleTextStyle,
      logoTitleSpacing: themeExtension2.logoTitleSpacing,
      mockMenuButtonIcon: themeExtension2.mockMenuButtonIcon,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroAppBarWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.mockAppLogoIcon,
        myoroLerp(
          themeExtension1.mockAppLogoIcon,
          themeExtension2.mockAppLogoIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.mockAppTitleTextStyle,
        TextStyle.lerp(
          themeExtension1.mockAppTitleTextStyle,
          themeExtension2.mockAppTitleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.logoTitleSpacing,
        lerpDouble(
          themeExtension1.logoTitleSpacing,
          themeExtension2.logoTitleSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.mockMenuButtonIcon,
        myoroLerp(
          themeExtension1.mockMenuButtonIcon,
          themeExtension2.mockMenuButtonIcon,
          i,
        ),
      );
    }
  });
}
