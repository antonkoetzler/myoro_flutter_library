import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroInputThemeExtension].
void main() {
  late final MyoroInputThemeExtension themeExtension1;
  late final MyoroInputThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroInputThemeExtension.fake();
    themeExtension2 = MyoroInputThemeExtension.fake();
  });

  test('MyoroInputThemeExtension.copyWith', () {
    MyoroInputThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      underlinedBorder: themeExtension2.underlinedBorder,
      outlinedBorder: themeExtension2.outlinedBorder,
      primaryColor: themeExtension2.primaryColor,
      errorBorderColor: themeExtension2.errorBorderColor,
      borderRadius: themeExtension2.borderRadius,
      isDense: themeExtension2.isDense,
      cursorHeight: themeExtension2.cursorHeight,
      disabledOpacity: themeExtension2.disabledOpacity,
      inputTextStyle: themeExtension2.inputTextStyle,
      spacing: themeExtension2.spacing,
      labelTextStyle: themeExtension2.labelTextStyle,
      labelBehavior: themeExtension2.labelBehavior,
      clearTextButtonPadding: themeExtension2.clearTextButtonPadding,
      clearTextButtonIcon: themeExtension2.clearTextButtonIcon,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroInputThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.underlinedBorder,
        myoroLerp(
          themeExtension1.underlinedBorder,
          themeExtension2.underlinedBorder,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.outlinedBorder,
        myoroLerp(
          themeExtension1.outlinedBorder,
          themeExtension2.outlinedBorder,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(
          themeExtension1.primaryColor,
          themeExtension2.primaryColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.errorBorderColor,
        Color.lerp(
          themeExtension1.errorBorderColor,
          themeExtension2.errorBorderColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(
          themeExtension1.borderRadius,
          themeExtension2.borderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.isDense,
        myoroLerp(themeExtension1.isDense, themeExtension2.isDense, i),
      );
      expect(
        lerpedThemeExtension.cursorHeight,
        lerpDouble(
          themeExtension1.cursorHeight,
          themeExtension2.cursorHeight,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.disabledOpacity,
        lerpDouble(
          themeExtension1.disabledOpacity,
          themeExtension2.disabledOpacity,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.inputTextStyle,
        TextStyle.lerp(
          themeExtension1.inputTextStyle,
          themeExtension2.inputTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
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
        lerpedThemeExtension.labelBehavior,
        myoroLerp(
          themeExtension1.labelBehavior,
          themeExtension2.labelBehavior,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.clearTextButtonPadding,
        EdgeInsets.lerp(
          themeExtension1.clearTextButtonPadding,
          themeExtension2.clearTextButtonPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.clearTextButtonIcon,
        myoroLerp(
          themeExtension1.clearTextButtonIcon,
          themeExtension2.clearTextButtonIcon,
          i,
        ),
      );
    }
  });
}
