import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroModalThemeExtension].
void main() {
  late final MyoroModalThemeExtension themeExtension1;
  late final MyoroModalThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroModalThemeExtension.fake();
    themeExtension2 = MyoroModalThemeExtension.fake();
  });

  test('MyoroModalThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      borderRadius: themeExtension2.borderRadius,
      border: themeExtension2.border,
      padding: themeExtension2.padding,
      constraints: themeExtension2.constraints,
      spacing: themeExtension2.spacing,
      titleTextStyle: themeExtension2.titleTextStyle,
      closeButtonIcon: themeExtension2.closeButtonIcon,
    );
    expect(copiedThemeExtension.primaryColor, themeExtension2.primaryColor);
    expect(copiedThemeExtension.borderRadius, themeExtension2.borderRadius);
    expect(copiedThemeExtension.border, themeExtension2.border);
    expect(copiedThemeExtension.padding, themeExtension2.padding);
    expect(copiedThemeExtension.constraints, themeExtension2.constraints);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
    expect(copiedThemeExtension.titleTextStyle, themeExtension2.titleTextStyle);
    expect(
      copiedThemeExtension.closeButtonIcon,
      themeExtension2.closeButtonIcon,
    );
  });

  test('MyoroModalThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
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
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(
          themeExtension1.borderRadius,
          themeExtension2.borderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.border,
        Border.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.padding,
        EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i),
      );
      expect(
        lerpedThemeExtension.constraints,
        BoxConstraints.lerp(
          themeExtension1.constraints,
          themeExtension2.constraints,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(
          themeExtension1.titleTextStyle,
          themeExtension2.titleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonIcon,
        myoroLerp(
          themeExtension1.closeButtonIcon,
          themeExtension2.closeButtonIcon,
          i,
        ),
      );
    }
  });
}
