import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDialogModalThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroDialogModalThemeExtension.builder(textTheme);
    expect(themeExtension.textStyle, textTheme.bodyMedium!);
    expect(themeExtension.footerButtonsSpacing, 10);
  });

  test('MyoroDialogModalThemeExtension.lerp', () {
    final themeExtension1 = MyoroDialogModalThemeExtension.fake();
    final themeExtension2 = MyoroDialogModalThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.textStyle, TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i));
      expect(
        lerpedThemeExtension.footerButtonsSpacing,
        lerpDouble(themeExtension1.footerButtonsSpacing, themeExtension2.footerButtonsSpacing, i),
      );
    }
  });
}
