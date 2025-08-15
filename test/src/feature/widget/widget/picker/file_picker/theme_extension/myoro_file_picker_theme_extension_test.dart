import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFilePickerThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroFilePickerThemeExtension.builder(textTheme);
    expect(themeExtension.spacing, kMyoroMultiplier * 2);
    expect(themeExtension.textStyle, textTheme.bodySmall!);
  });

  test('MyoroFilePickerThemeExtension.lerp', () {
    final themeExtension1 = MyoroFilePickerThemeExtension.fake();
    final themeExtension2 = MyoroFilePickerThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(lerpedThemeExtension.textStyle, TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i));
    }
  });
}
