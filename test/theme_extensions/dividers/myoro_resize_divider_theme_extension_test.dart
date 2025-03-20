import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroResizeDividerThemeExtension].
void main() {
  final themeExtension1 = MyoroResizeDividerThemeExtension.fake();
  final themeExtension2 = MyoroResizeDividerThemeExtension.fake();

  test('MyoroResizeDividerThemeExtension.copyWith', () {
    MyoroResizeDividerThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      secondary: themeExtension2.secondary,
      resizeButtonShortValue: themeExtension2.resizeButtonShortValue,
      resizeButtonLongValue: themeExtension2.resizeButtonLongValue,
      resizeButtonBorderRadius: themeExtension2.resizeButtonBorderRadius,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroResizeDividerThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.secondary,
        Color.lerp(themeExtension1.secondary, themeExtension2.secondary, i),
      );
      expect(
        lerpedThemeExtension.resizeButtonShortValue,
        lerpDouble(
          themeExtension1.resizeButtonShortValue,
          themeExtension2.resizeButtonShortValue,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.resizeButtonLongValue,
        lerpDouble(
          themeExtension1.resizeButtonLongValue,
          themeExtension2.resizeButtonLongValue,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.resizeButtonBorderRadius,
        BorderRadius.lerp(
          themeExtension1.resizeButtonBorderRadius,
          themeExtension2.resizeButtonBorderRadius,
          i,
        ),
      );
    }
  });
}
