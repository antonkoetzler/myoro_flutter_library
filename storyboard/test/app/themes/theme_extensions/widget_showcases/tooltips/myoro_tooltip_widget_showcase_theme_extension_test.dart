import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroTooltipWidgetShowcaseThemeExtension].
void main() {
  late final MyoroTooltipWidgetShowcaseThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MyoroTooltipWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroTooltipWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroTooltipWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      childSize: themeExtension2.childSize,
      childDecoration: themeExtension2.childDecoration,
      childTextStyle: themeExtension2.childTextStyle,
    );
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
    expect(copiedThemeExtension.childSize, themeExtension2.childSize);
    expect(copiedThemeExtension.childDecoration, themeExtension2.childDecoration);
    expect(copiedThemeExtension.childTextStyle, themeExtension2.childTextStyle);
  });

  test('MyoroTooltipWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.childSize,
        lerpDouble(themeExtension1.childSize, themeExtension2.childSize, i),
      );
      expect(
        lerpedThemeExtension.childDecoration,
        BoxDecoration.lerp(themeExtension1.childDecoration, themeExtension2.childDecoration, i),
      );
      expect(
        lerpedThemeExtension.childTextStyle,
        TextStyle.lerp(themeExtension1.childTextStyle, themeExtension2.childTextStyle, i),
      );
    }
  });
}
