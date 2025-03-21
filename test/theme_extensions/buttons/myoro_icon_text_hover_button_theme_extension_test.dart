import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroIconTextHoverButtonThemeExtension].
void main() {
  late final MyoroIconTextHoverButtonThemeExtension themeExtension1;
  late final MyoroIconTextHoverButtonThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroIconTextHoverButtonThemeExtension.fake();
    themeExtension2 = MyoroIconTextHoverButtonThemeExtension.fake();
  });

  test('MyoroIconTextHoverButtonThemeExtension.copyWith', () {
    MyoroIconTextHoverButtonThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      onPrimaryColor: themeExtension2.onPrimaryColor,
      contentPadding: themeExtension2.contentPadding,
      textStyle: themeExtension2.textStyle,
      textMaxLines: themeExtension2.textMaxLines,
      textOverflow: themeExtension2.textOverflow,
      spacing: themeExtension2.spacing,
      mainAxisAlignment: themeExtension2.mainAxisAlignment,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroIconTextHoverButtonThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.integer(1000); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(
          themeExtension1.primaryColor,
          themeExtension2.primaryColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.onPrimaryColor,
        Color.lerp(
          themeExtension1.onPrimaryColor,
          themeExtension2.onPrimaryColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.contentPadding,
        EdgeInsets.lerp(
          themeExtension1.contentPadding,
          themeExtension2.contentPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.textStyle,
        TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i),
      );
      expect(
        lerpedThemeExtension.textMaxLines,
        lerpDouble(
              themeExtension1.textMaxLines,
              themeExtension2.textMaxLines,
              i,
            )?.toInt() ??
            themeExtension1.textMaxLines,
      );
      expect(
        lerpedThemeExtension.textOverflow,
        myoroLerp(
          themeExtension1.textOverflow,
          themeExtension2.textOverflow,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.mainAxisAlignment,
        myoroLerp(
          themeExtension1.mainAxisAlignment,
          themeExtension2.mainAxisAlignment,
          i,
        ),
      );
    }
  });
}
