import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroInputWidgetShowcaseThemeExtension].
void main() {
  late final MyoroInputWidgetShowcaseThemeExtension themeExtension1,
      themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroInputWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroInputWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroInputWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      configurationOptionTextStyle:
          themeExtension2.configurationOptionTextStyle,
      configurationOptionSpacing: themeExtension2.configurationOptionSpacing,
      inputStyle: themeExtension2.inputStyle,
      suffixWidgetIcon: themeExtension2.suffixWidgetIcon,
    );
    expect(
      copiedThemeExtension.configurationOptionTextStyle,
      themeExtension2.configurationOptionTextStyle,
    );
    expect(
      copiedThemeExtension.configurationOptionSpacing,
      themeExtension2.configurationOptionSpacing,
    );
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
    expect(
      copiedThemeExtension.suffixWidgetIcon,
      themeExtension2.suffixWidgetIcon,
    );
  });

  test('MyoroInputWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.configurationOptionTextStyle,
        TextStyle.lerp(
          themeExtension1.configurationOptionTextStyle,
          themeExtension2.configurationOptionTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.configurationOptionSpacing,
        lerpDouble(
          themeExtension1.configurationOptionSpacing,
          themeExtension2.configurationOptionSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.suffixWidgetIcon,
        myoroLerp(
          themeExtension1.suffixWidgetIcon,
          themeExtension2.suffixWidgetIcon,
          i,
        ),
      );
    }
  });
}
