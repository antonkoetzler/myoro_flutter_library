import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroResizeDividerThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroResizeDividerThemeExtension.builder(colorScheme);
    expect(themeExtension.secondary, colorScheme.onPrimary);
    expect(themeExtension.resizeButtonShortValue, 8);
    expect(themeExtension.resizeButtonLongValue, 8);
    expect(themeExtension.resizeButtonBorderRadius, BorderRadius.circular(kMyoroBorderRadiusLength));
  });

  test('MyoroResizeDividerThemeExtension.lerp', () {
    final themeExtension1 = MyoroResizeDividerThemeExtension.fake();
    final themeExtension2 = MyoroResizeDividerThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.secondary, Color.lerp(themeExtension1.secondary, themeExtension2.secondary, i));
      expect(
        lerpedThemeExtension.resizeButtonShortValue,
        lerpDouble(themeExtension1.resizeButtonShortValue, themeExtension2.resizeButtonShortValue, i),
      );
      expect(
        lerpedThemeExtension.resizeButtonLongValue,
        lerpDouble(themeExtension1.resizeButtonLongValue, themeExtension2.resizeButtonLongValue, i),
      );
      expect(
        lerpedThemeExtension.resizeButtonBorderRadius,
        BorderRadius.lerp(themeExtension1.resizeButtonBorderRadius, themeExtension2.resizeButtonBorderRadius, i),
      );
    }
  });
}
