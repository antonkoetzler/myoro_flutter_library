import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroFormWidgetShowcaseThemeExtension].
void main() {
  late final MyoroFormWidgetShowcaseThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MyoroFormWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroFormWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroFormWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      widgetMainAxisAlignment: themeExtension2.widgetMainAxisAlignment,
      widgetInputStyle: themeExtension2.widgetInputStyle,
      widgetSpacing: themeExtension2.widgetSpacing,
      submitButtonMainAxisAlignment: themeExtension2.submitButtonMainAxisAlignment,
      submitButtonBordered: themeExtension2.submitButtonBordered,
      resultTextStyle: themeExtension2.resultTextStyle,
      successColor: themeExtension2.successColor,
      errorColor: themeExtension2.errorColor,
    );
    expect(copiedThemeExtension.widgetMainAxisAlignment, themeExtension2.widgetMainAxisAlignment);
    expect(copiedThemeExtension.widgetInputStyle, themeExtension2.widgetInputStyle);
    expect(copiedThemeExtension.widgetSpacing, themeExtension2.widgetSpacing);
    expect(copiedThemeExtension.submitButtonMainAxisAlignment, themeExtension2.submitButtonMainAxisAlignment);
    expect(copiedThemeExtension.submitButtonBordered, themeExtension2.submitButtonBordered);
    expect(copiedThemeExtension.resultTextStyle, themeExtension2.resultTextStyle);
    expect(copiedThemeExtension.successColor, themeExtension2.successColor);
    expect(copiedThemeExtension.errorColor, themeExtension2.errorColor);
  });

  test('MyoroFormWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetMainAxisAlignment,
        myoroLerp(themeExtension1.widgetMainAxisAlignment, themeExtension2.widgetMainAxisAlignment, i),
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
        myoroLerp(themeExtension1.submitButtonMainAxisAlignment, themeExtension2.submitButtonMainAxisAlignment, i),
      );
      expect(
        lerpedThemeExtension.submitButtonBordered,
        myoroLerp(themeExtension1.submitButtonBordered, themeExtension2.submitButtonBordered, i),
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
}
