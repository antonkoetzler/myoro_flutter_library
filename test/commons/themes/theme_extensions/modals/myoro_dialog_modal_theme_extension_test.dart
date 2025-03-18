import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDialogModalThemeExtension].
void main() {
  late final MyoroDialogModalThemeExtension themeExtension1;
  late final MyoroDialogModalThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme =
        createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MyoroDialogModalThemeExtension.fake();
    themeExtension2 = MyoroDialogModalThemeExtension.fake();
  });

  test('MyoroDialogModalThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      textStyle: themeExtension2.textStyle,
      footerButtonsSpacing: themeExtension2.footerButtonsSpacing,
    );
    expect(copiedThemeExtension.textStyle, themeExtension2.textStyle);
    expect(copiedThemeExtension.footerButtonsSpacing,
        themeExtension2.footerButtonsSpacing);
  });

  test('MyoroDialogModalThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.textStyle,
        TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i),
      );
      expect(
        lerpedThemeExtension.footerButtonsSpacing,
        lerpDouble(themeExtension1.footerButtonsSpacing,
            themeExtension2.footerButtonsSpacing, i),
      );
    }
  });
}
