import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  late final MyoroButtonWidgetShowcaseThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroButtonWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroButtonWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroButtonWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        spacing: themeExtension2.spacing,
        borderWidth: themeExtension2.borderWidth,
        buttonContentPadding: themeExtension2.buttonContentPadding,
        buttonContentImageSize: themeExtension2.buttonContentImageSize,
        buttonContentTextStyle: themeExtension2.buttonContentTextStyle,
        buttonContentTextIdleColor: themeExtension2.buttonContentTextIdleColor,
        buttonContentTextHoverColor: themeExtension2.buttonContentTextHoverColor,
        buttonContentTextTapColor: themeExtension2.buttonContentTextTapColor,
      ),
      themeExtension2,
    );
  });

  test('MyoroButtonWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.borderWidth,
        lerpDouble(themeExtension1.borderWidth, themeExtension2.borderWidth, i),
      );
      expect(
        lerpedThemeExtension.buttonContentPadding,
        EdgeInsets.lerp(
          themeExtension1.buttonContentPadding,
          themeExtension2.buttonContentPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonContentImageSize,
        lerpDouble(
          themeExtension1.buttonContentImageSize,
          themeExtension2.buttonContentImageSize,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonContentTextStyle,
        TextStyle.lerp(
          themeExtension1.buttonContentTextStyle,
          themeExtension2.buttonContentTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonContentTextIdleColor,
        Color.lerp(
          themeExtension1.buttonContentTextIdleColor,
          themeExtension2.buttonContentTextIdleColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonContentTextHoverColor,
        Color.lerp(
          themeExtension1.buttonContentTextHoverColor,
          themeExtension2.buttonContentTextHoverColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonContentTextTapColor,
        Color.lerp(
          themeExtension1.buttonContentTextTapColor,
          themeExtension2.buttonContentTextTapColor,
          i,
        ),
      );
    }
  });

  test('MyoroButtonWidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroButtonWidgetShowcaseThemeExtension(\n'
      '  spacing: ${themeExtension1.spacing},\n'
      '  borderWidth: ${themeExtension1.borderWidth},\n'
      '  buttonContentPadding: ${themeExtension1.buttonContentPadding},\n'
      '  buttonContentImageSize: ${themeExtension1.buttonContentImageSize},\n'
      '  buttonContentTextStyle: ${themeExtension1.buttonContentTextStyle},\n'
      '  buttonContentTextIdleColor: ${themeExtension1.buttonContentTextIdleColor},\n'
      '  buttonContentTextHoverColor: ${themeExtension1.buttonContentTextHoverColor},\n'
      '  buttonContentTextTapColor: ${themeExtension1.buttonContentTextTapColor},\n'
      ');',
    );
  });
}
