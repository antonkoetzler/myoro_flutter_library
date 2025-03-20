import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroModalWidgetShowcaseThemeExtension].
void main() {
  late final MyoroModalWidgetShowcaseThemeExtension themeExtension1,
      themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroModalWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroModalWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroModalWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      spacing: themeExtension2.spacing,
      headerTextStyle: themeExtension2.headerTextStyle,
      inputStyle: themeExtension2.inputStyle,
    );
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
    expect(
      copiedThemeExtension.headerTextStyle,
      themeExtension2.headerTextStyle,
    );
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
  });

  test('MyoroModalWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.headerTextStyle,
        TextStyle.lerp(
          themeExtension1.headerTextStyle,
          themeExtension2.headerTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
    }
  });
}
