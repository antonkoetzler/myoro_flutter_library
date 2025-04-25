import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  late final MyoroFormWidgetShowcaseThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroFormWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroFormWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroFormWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        widgetMainAxisAlignment: themeExtension2.widgetMainAxisAlignment,
        widgetInputStyle: themeExtension2.widgetInputStyle,
        widgetSpacing: themeExtension2.widgetSpacing,
        submitButtonMainAxisAlignment: themeExtension2.submitButtonMainAxisAlignment,
        resultTextStyle: themeExtension2.resultTextStyle,
        successColor: themeExtension2.successColor,
        errorColor: themeExtension2.errorColor,
      ),
      themeExtension2,
    );
  });

  test('MyoroFormWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetMainAxisAlignment,
        myoroLerp(
          themeExtension1.widgetMainAxisAlignment,
          themeExtension2.widgetMainAxisAlignment,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetInputStyle,
        myoroLerp(themeExtension1.widgetInputStyle, themeExtension2.widgetInputStyle, i),
      );
      expect(
        lerpedThemeExtension.widgetSpacing,
        lerpDouble(themeExtension1.widgetSpacing, themeExtension2.widgetSpacing, i),
      );
      expect(
        lerpedThemeExtension.submitButtonMainAxisAlignment,
        myoroLerp(
          themeExtension1.submitButtonMainAxisAlignment,
          themeExtension2.submitButtonMainAxisAlignment,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.resultTextStyle,
        TextStyle.lerp(themeExtension1.resultTextStyle, themeExtension2.resultTextStyle, i),
      );
      expect(
        lerpedThemeExtension.successColor,
        Color.lerp(themeExtension1.successColor, themeExtension2.successColor, i),
      );
      expect(
        lerpedThemeExtension.errorColor,
        Color.lerp(themeExtension1.errorColor, themeExtension2.errorColor, i),
      );
    }
  });

  test('MyoroFormWidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroFormWidgetShowcaseThemeExtension(\n'
      '  widgetMainAxisAlignment: ${themeExtension1.widgetMainAxisAlignment},\n'
      '  widgetInputStyle: ${themeExtension1.widgetInputStyle},\n'
      '  widgetSpacing: ${themeExtension1.widgetSpacing},\n'
      '  submitButtonMainAxisAlignment: ${themeExtension1.submitButtonMainAxisAlignment},\n'
      '  resultTextStyle: ${themeExtension1.resultTextStyle},\n'
      '  successColor: ${themeExtension1.successColor},\n'
      '  errorColor: ${themeExtension1.errorColor},\n'
      ');',
    );
  });
}
