import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroRadioThemeExtension].
void main() {
  late final MyoroRadioThemeExtension themeExtension1;
  late final MyoroRadioThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme =
        createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MyoroRadioThemeExtension.fake();
    themeExtension2 = MyoroRadioThemeExtension.fake();
  });

  test('MyoroRadioThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      activeColor: themeExtension2.activeColor,
      hoverColor: themeExtension2.hoverColor,
      labelTextStyle: themeExtension2.labelTextStyle,
      spacing: themeExtension2.spacing,
      splashRadius: themeExtension2.splashRadius,
    );
    expect(copiedThemeExtension.activeColor, themeExtension2.activeColor);
    expect(copiedThemeExtension.hoverColor, themeExtension2.hoverColor);
    expect(copiedThemeExtension.labelTextStyle, themeExtension2.labelTextStyle);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
    expect(copiedThemeExtension.splashRadius, themeExtension2.splashRadius);
  });

  test('MyoroRadioThemeExtension.copyWith', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.activeColor,
        Color.lerp(themeExtension1.activeColor, themeExtension2.activeColor, i),
      );
      expect(
        lerpedThemeExtension.hoverColor,
        Color.lerp(themeExtension1.hoverColor, themeExtension2.hoverColor, i),
      );
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(
            themeExtension1.labelTextStyle, themeExtension2.labelTextStyle, i),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.splashRadius,
        lerpDouble(
            themeExtension1.splashRadius, themeExtension2.splashRadius, i),
      );
    }
  });
}
