import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroInputThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroInputThemeExtension.builder(colorScheme, textTheme);
    expect(
      themeExtension.underlinedBorder,
      UnderlineInputBorder(borderSide: BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary)),
    );
    expect(
      themeExtension.outlinedBorder,
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
        borderSide: BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      ),
    );
    expect(themeExtension.noneBorder, InputBorder.none);
    expect(themeExtension.primaryColor, colorScheme.primary);
    expect(themeExtension.errorBorderColor, colorScheme.error);
    expect(themeExtension.cursorHeight, 20);
    expect(themeExtension.contentPadding, const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5));
    expect(themeExtension.disabledOpacity, 0.5);
    expect(themeExtension.inputTextStyle, textTheme.bodyMedium!);
    expect(themeExtension.labelTextStyle, textTheme.headlineSmall!);
    expect(themeExtension.labelBehavior, FloatingLabelBehavior.always);
    expect(themeExtension.spacing, 10);
    expect(themeExtension.clearTextButtonPadding, const EdgeInsets.fromLTRB(5, 5, 6.5, 5));
    expect(themeExtension.clearTextButtonIcon, Icons.close);
  });

  test('MyoroInputThemeExtension.lerp', () {
    final themeExtension1 = MyoroInputThemeExtension.fake();
    final themeExtension2 = MyoroInputThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.underlinedBorder,
        myoroLerp(themeExtension1.underlinedBorder, themeExtension2.underlinedBorder, i),
      );
      expect(
        lerpedThemeExtension.outlinedBorder,
        myoroLerp(themeExtension1.outlinedBorder, themeExtension2.outlinedBorder, i),
      );
      expect(lerpedThemeExtension.noneBorder, myoroLerp(themeExtension1.noneBorder, themeExtension2.noneBorder, i));
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(themeExtension1.primaryColor, themeExtension2.primaryColor, i),
      );
      expect(
        lerpedThemeExtension.errorBorderColor,
        Color.lerp(themeExtension1.errorBorderColor, themeExtension2.errorBorderColor, i),
      );
      expect(
        lerpedThemeExtension.cursorHeight,
        lerpDouble(themeExtension1.cursorHeight, themeExtension2.cursorHeight, i),
      );
      expect(
        lerpedThemeExtension.contentPadding,
        EdgeInsets.lerp(themeExtension1.contentPadding, themeExtension2.contentPadding, i),
      );
      expect(
        lerpedThemeExtension.disabledOpacity,
        lerpDouble(themeExtension1.disabledOpacity, themeExtension2.disabledOpacity, i),
      );
      expect(
        lerpedThemeExtension.inputTextStyle,
        TextStyle.lerp(themeExtension1.inputTextStyle, themeExtension2.inputTextStyle, i),
      );
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(themeExtension1.labelTextStyle, themeExtension2.labelTextStyle, i),
      );
      expect(
        lerpedThemeExtension.labelBehavior,
        myoroLerp(themeExtension1.labelBehavior, themeExtension2.labelBehavior, i),
      );
      expect(
        lerpedThemeExtension.clearTextButtonPadding,
        EdgeInsets.lerp(themeExtension1.clearTextButtonPadding, themeExtension2.clearTextButtonPadding, i),
      );
      expect(
        lerpedThemeExtension.clearTextButtonIcon,
        myoroLerp(themeExtension1.clearTextButtonIcon, themeExtension2.clearTextButtonIcon, i),
      );
    }
  });
}
