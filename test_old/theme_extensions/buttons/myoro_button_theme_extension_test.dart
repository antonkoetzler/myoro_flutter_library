import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MyoroButtonThemeExtension.fake();
  final themeExtension2 = MyoroButtonThemeExtension.fake();

  test('MyoroButtonThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(borderRadius: themeExtension2.borderRadius), themeExtension2);
  });

  test('MyoroButtonThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
    }
  });

  test('MyoroButtonThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroButtonThemeExtension(\n'
      '  borderRadius: ${themeExtension1.borderRadius},\n'
      ');',
    );
  });
}
