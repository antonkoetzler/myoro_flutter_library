import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroMenuWidgetShowcaseThemeExtension].
void main() {
  late final MyoroMenuWidgetShowcaseThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroMenuWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroMenuWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroMenuWidgetShowcaseThemeExtension.copyWith', () {
    MyoroMenuWidgetShowcaseThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      constraintsOptionSpacing: themeExtension2.constraintsOptionSpacing,
      headerTextStyle: themeExtension2.headerTextStyle,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroMenuWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.constraintsOptionSpacing,
        lerpDouble(
          themeExtension1.constraintsOptionSpacing,
          themeExtension2.constraintsOptionSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.headerTextStyle,
        TextStyle.lerp(themeExtension1.headerTextStyle, themeExtension2.headerTextStyle, i),
      );
    }
  });
}
