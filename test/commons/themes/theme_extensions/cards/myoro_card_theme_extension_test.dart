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
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MyoroCardThemeExtension.fake();
    themeExtension2 = MyoroCardThemeExtension.fake();
  });

  test('MyoroCardThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      border: themeExtension2.border,
      borderRadius: themeExtension2.borderRadius,
      padding: themeExtension2.padding,
      titleCardSpacing: themeExtension2.titleCardSpacing,
      textStyle: themeExtension2.textStyle,
    );
    expect(copiedThemeExtension.primaryColor, themeExtension2.primaryColor);
    expect(copiedThemeExtension.border, themeExtension2.border);
    expect(copiedThemeExtension.borderRadius, themeExtension2.borderRadius);
    expect(copiedThemeExtension.padding, themeExtension2.padding);
    expect(copiedThemeExtension.titleCardSpacing, themeExtension2.titleCardSpacing);
    expect(copiedThemeExtension.textStyle, themeExtension2.textStyle);
  });

  test('MyoroCardThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.integer(1000); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(themeExtension1.primaryColor, themeExtension2.primaryColor, i),
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
