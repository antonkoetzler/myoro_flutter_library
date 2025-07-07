import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAccordionThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroAccordionThemeExtension.builder(colorScheme, textTheme);

    expect(themeExtension.itemContentAnimationDuration, const Duration(milliseconds: 200));
    expect(themeExtension.itemContentAnimationCurve, Curves.easeInOut);
    expect(themeExtension.itemTitleButtonBorderRadius, BorderRadius.zero);
    expect(themeExtension.itemTitleButtonContentPadding, const EdgeInsets.all(10));
    expect(themeExtension.itemTitleButtonSpacing, 10);
    expect(themeExtension.itemTitleButtonTitleTextStyle, textTheme.titleLarge!);
    expect(themeExtension.itemTitleButtonArrowIcon, Icons.keyboard_arrow_down);
    expect(themeExtension.itemTitleButtonArrowIconSize, 25);
    expect(themeExtension.itemTitleButtonArrowIconColor, colorScheme.onPrimary);
    expect(themeExtension.itemTitleButtonArrowBorderRadius, BorderRadius.circular(kMyoroBorderRadiusLength));
    expect(themeExtension.itemTitleButtonArrowAnimationDuration, const Duration(milliseconds: 250));
    expect(themeExtension.itemTitleButtonArrowAnimationCurve, Curves.easeInOut);
  });

  test('MyoroAccordionThemeExtension.lerp', () {
    final themeExtension1 = MyoroAccordionThemeExtension.fake();
    final themeExtension2 = MyoroAccordionThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);

      expect(
        lerpedThemeExtension.itemContentAnimationDuration,
        myoroLerp(themeExtension1.itemContentAnimationDuration, themeExtension2.itemContentAnimationDuration, i),
      );
      expect(
        lerpedThemeExtension.itemContentAnimationCurve,
        myoroLerp(themeExtension1.itemContentAnimationCurve, themeExtension2.itemContentAnimationCurve, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonBorderRadius,
        BorderRadius.lerp(themeExtension1.itemTitleButtonBorderRadius, themeExtension2.itemTitleButtonBorderRadius, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonContentPadding,
        EdgeInsets.lerp(
          themeExtension1.itemTitleButtonContentPadding,
          themeExtension2.itemTitleButtonContentPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonSpacing,
        lerpDouble(themeExtension1.itemTitleButtonSpacing, themeExtension2.itemTitleButtonSpacing, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonTitleTextStyle,
        TextStyle.lerp(themeExtension1.itemTitleButtonTitleTextStyle, themeExtension2.itemTitleButtonTitleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonArrowIcon,
        myoroLerp(themeExtension1.itemTitleButtonArrowIcon, themeExtension2.itemTitleButtonArrowIcon, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonArrowIconSize,
        lerpDouble(themeExtension1.itemTitleButtonArrowIconSize, themeExtension2.itemTitleButtonArrowIconSize, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonArrowIconColor,
        Color.lerp(themeExtension1.itemTitleButtonArrowIconColor, themeExtension2.itemTitleButtonArrowIconColor, i),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonArrowBorderRadius,
        BorderRadius.lerp(
          themeExtension1.itemTitleButtonArrowBorderRadius,
          themeExtension2.itemTitleButtonArrowBorderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonArrowAnimationDuration,
        myoroLerp(
          themeExtension1.itemTitleButtonArrowAnimationDuration,
          themeExtension2.itemTitleButtonArrowAnimationDuration,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.itemTitleButtonArrowAnimationCurve,
        myoroLerp(
          themeExtension1.itemTitleButtonArrowAnimationCurve,
          themeExtension2.itemTitleButtonArrowAnimationCurve,
          i,
        ),
      );
    }
  });
}
