import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroCheckboxThemeExtension].
void main() {
  late final MyoroCheckboxThemeExtension themeExtension1;
  late final MyoroCheckboxThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroCheckboxThemeExtension.fake();
    themeExtension2 = MyoroCheckboxThemeExtension.fake();
  });

  test('MyoroCheckboxThemeExtension.copyWith', () {
    MyoroCheckboxThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      activeColor: themeExtension2.activeColor,
      checkColor: themeExtension2.checkColor,
      hoverColor: themeExtension2.hoverColor,
      focusColor: themeExtension2.focusColor,
      splashRadius: themeExtension2.splashRadius,
      labelTextStyle: themeExtension2.labelTextStyle,
      spacing: themeExtension2.spacing,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroCheckboxThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.activeColor,
        Color.lerp(themeExtension1.activeColor, themeExtension2.activeColor, i),
      );
      expect(
        lerpedThemeExtension.checkColor,
        Color.lerp(themeExtension1.checkColor, themeExtension2.checkColor, i),
      );
      expect(
        lerpedThemeExtension.hoverColor,
        Color.lerp(themeExtension1.hoverColor, themeExtension2.hoverColor, i),
      );
      expect(
        lerpedThemeExtension.focusColor,
        Color.lerp(themeExtension1.focusColor, themeExtension2.focusColor, i),
      );
      expect(
        lerpedThemeExtension.splashRadius,
        lerpDouble(
          themeExtension1.splashRadius,
          themeExtension2.splashRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(
          themeExtension1.labelTextStyle,
          themeExtension2.labelTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });
}
