import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroHoverButtonThemeExtension].
void main() {
  final themeExtension1 = MyoroHoverButtonThemeExtension.fake();
  final themeExtension2 = MyoroHoverButtonThemeExtension.fake();

  test('MyoroHoverButtonThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      onPrimaryColor: themeExtension2.onPrimaryColor,
      borderRadius: themeExtension2.borderRadius,
      bordered: themeExtension2.bordered,
    );
    expect(copiedThemeExtension.primaryColor, themeExtension2.primaryColor);
    expect(copiedThemeExtension.onPrimaryColor, themeExtension2.onPrimaryColor);
    expect(copiedThemeExtension.borderRadius, themeExtension2.borderRadius);
    expect(copiedThemeExtension.bordered, themeExtension2.bordered);
  });

  test('MyoroHoverButtonThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.integer(1000); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(themeExtension1.primaryColor, themeExtension2.primaryColor, i),
      );
      expect(
        lerpedThemeExtension.onPrimaryColor,
        Color.lerp(themeExtension1.onPrimaryColor, themeExtension2.onPrimaryColor, i),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(
        lerpedThemeExtension.bordered,
        myoroLerp(themeExtension1.bordered, themeExtension2.bordered, i),
      );
    }
  });
}
