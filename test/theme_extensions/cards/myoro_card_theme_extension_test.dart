import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroCardThemeExtension].
void main() {
  late final MyoroCardThemeExtension themeExtension1;
  late final MyoroCardThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroCardThemeExtension.fake();
    themeExtension2 = MyoroCardThemeExtension.fake();
  });

  test('MyoroCardThemeExtension.copyWith', () {
    MyoroCardThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      backgroundColor: themeExtension2.backgroundColor,
      border: themeExtension2.border,
      borderRadius: themeExtension2.borderRadius,
      padding: themeExtension2.padding,
      titleCardSpacing: themeExtension2.titleCardSpacing,
      textStyle: themeExtension2.textStyle,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroCardThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.integer(1000); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.backgroundColor,
        Color.lerp(themeExtension1.backgroundColor, themeExtension2.backgroundColor, i),
      );
      expect(
        lerpedThemeExtension.border,
        Border.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(
        lerpedThemeExtension.padding,
        EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i),
      );
      expect(
        lerpedThemeExtension.titleCardSpacing,
        lerpDouble(themeExtension1.titleCardSpacing, themeExtension2.titleCardSpacing, i),
      );
      expect(
        lerpedThemeExtension.textStyle,
        TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i),
      );
    }
  });
}
