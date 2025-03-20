import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroAppBarThemeExtension].
void main() {
  final themeExtension1 = MyoroAppBarThemeExtension.fake();
  final themeExtension2 = MyoroAppBarThemeExtension.fake();

  test('MyoroAppBarThemeExtension.copyWith', () {
    final copyThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      contentPadding: themeExtension2.contentPadding,
    );
    expect(copyThemeExtension.primaryColor, themeExtension2.primaryColor);
    expect(copyThemeExtension.contentPadding, themeExtension2.contentPadding);
  });

  test('MyoroAppBarThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.integer(1000); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      final primaryColor =
          Color.lerp(
            themeExtension1.primaryColor,
            themeExtension2.primaryColor,
            i,
          ) ??
          themeExtension1.primaryColor;
      final contentPadding =
          EdgeInsets.lerp(
            themeExtension1.contentPadding,
            themeExtension2.contentPadding,
            i,
          ) ??
          themeExtension1.contentPadding;
      expect(lerpedThemeExtension.primaryColor, primaryColor);
      expect(lerpedThemeExtension.contentPadding, contentPadding);
    }
  });
}
