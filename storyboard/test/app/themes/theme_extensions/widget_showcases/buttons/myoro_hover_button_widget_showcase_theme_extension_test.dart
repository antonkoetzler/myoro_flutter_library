import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroHoverButtonWidgetShowcaseThemeExtension].
void main() {
  late final MyoroHoverButtonWidgetShowcaseThemeExtension themeExtension1;
  late final MyoroHoverButtonWidgetShowcaseThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MyoroHoverButtonWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroHoverButtonWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroHoverButtonWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      widgetContentPadding: themeExtension2.widgetContentPadding,
      widgetContentTextStyle: themeExtension2.widgetContentTextStyle,
      colorDropdownitemPrimaryColor: themeExtension2.colorDropdownitemPrimaryColor,
      colorDropdownItemPadding: themeExtension2.colorDropdownItemPadding,
      colorDropdownItemColorSize: themeExtension2.colorDropdownItemColorSize,
      colorDropdownItemColorTextStyle: themeExtension2.colorDropdownItemColorTextStyle,
      colorDropdownItemSpacing: themeExtension2.colorDropdownItemSpacing,
      borderRadiusSliderMaxValue: themeExtension2.borderRadiusSliderMaxValue,
      borderRadiusSliderMaxValueBordered: themeExtension2.borderRadiusSliderMaxValueBordered,
    );
    expect(copiedThemeExtension.widgetContentPadding, themeExtension2.widgetContentPadding);
    expect(copiedThemeExtension.widgetContentTextStyle, themeExtension2.widgetContentTextStyle);
    expect(copiedThemeExtension.colorDropdownitemPrimaryColor, themeExtension2.colorDropdownitemPrimaryColor);
    expect(copiedThemeExtension.colorDropdownItemPadding, themeExtension2.colorDropdownItemPadding);
    expect(copiedThemeExtension.colorDropdownItemColorSize, themeExtension2.colorDropdownItemColorSize);
    expect(copiedThemeExtension.colorDropdownItemColorTextStyle, themeExtension2.colorDropdownItemColorTextStyle);
    expect(copiedThemeExtension.colorDropdownItemSpacing, themeExtension2.colorDropdownItemSpacing);
    expect(copiedThemeExtension.borderRadiusSliderMaxValue, themeExtension2.borderRadiusSliderMaxValue);
    expect(copiedThemeExtension.borderRadiusSliderMaxValueBordered, themeExtension2.borderRadiusSliderMaxValueBordered);
  });

  test('MyoroHoverButtonWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetContentPadding,
        EdgeInsets.lerp(themeExtension1.widgetContentPadding, themeExtension2.widgetContentPadding, i),
      );
      expect(
        lerpedThemeExtension.widgetContentTextStyle,
        TextStyle.lerp(themeExtension1.widgetContentTextStyle, themeExtension2.widgetContentTextStyle, i),
      );
      expect(
        lerpedThemeExtension.colorDropdownitemPrimaryColor,
        Color.lerp(themeExtension1.colorDropdownitemPrimaryColor, themeExtension2.colorDropdownitemPrimaryColor, i),
      );
      expect(
        lerpedThemeExtension.colorDropdownItemPadding,
        EdgeInsets.lerp(themeExtension1.colorDropdownItemPadding, themeExtension2.colorDropdownItemPadding, i),
      );
      expect(
        lerpedThemeExtension.colorDropdownItemColorSize,
        Size.lerp(themeExtension1.colorDropdownItemColorSize, themeExtension2.colorDropdownItemColorSize, i),
      );
      expect(
        lerpedThemeExtension.colorDropdownItemColorTextStyle,
        TextStyle.lerp(themeExtension1.colorDropdownItemColorTextStyle, themeExtension2.colorDropdownItemColorTextStyle, i),
      );
      expect(
        lerpedThemeExtension.colorDropdownItemSpacing,
        lerpDouble(themeExtension1.colorDropdownItemSpacing, themeExtension2.colorDropdownItemSpacing, i),
      );
      expect(
        lerpedThemeExtension.borderRadiusSliderMaxValue,
        lerpDouble(themeExtension1.borderRadiusSliderMaxValue, themeExtension2.borderRadiusSliderMaxValue, i),
      );
      expect(
        lerpedThemeExtension.borderRadiusSliderMaxValueBordered,
        myoroLerp(themeExtension1.borderRadiusSliderMaxValueBordered, themeExtension2.borderRadiusSliderMaxValueBordered, i),
      );
    }
  });
}
