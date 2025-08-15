import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroIconTextButtonThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroIconTextButtonThemeExtension.builder(textTheme);
    expect(themeExtension.contentPadding, const EdgeInsets.all(5));
    expect(themeExtension.spacing, 10);
    expect(themeExtension.textStyle, textTheme.bodyMedium!);
  });

  test('MyoroIconTextButtonThemeExtension.lerp', () {
    final themeExtension1 = MyoroIconTextButtonThemeExtension.fake();
    final themeExtension2 = MyoroIconTextButtonThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.contentPadding,
        EdgeInsets.lerp(themeExtension1.contentPadding, themeExtension2.contentPadding, i),
      );
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(lerpedThemeExtension.textStyle, TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i));
    }
  });
}
