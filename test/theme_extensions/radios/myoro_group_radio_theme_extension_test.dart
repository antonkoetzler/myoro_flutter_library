import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroGroupRadioThemeExtension].
void main() {
  final themeExtension1 = MyoroGroupRadioThemeExtension.fake();
  final themeExtension2 = MyoroGroupRadioThemeExtension.fake();

  test('MyoroGroupRadioThemeExtension.copyWith', () {
    MyoroGroupRadioThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      direction: themeExtension2.direction,
      spacing: themeExtension2.spacing,
      runSpacing: themeExtension2.runSpacing,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroGroupRadioThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.direction,
        myoroLerp(themeExtension1.direction, themeExtension2.direction, i),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.runSpacing,
        lerpDouble(themeExtension1.runSpacing, themeExtension2.runSpacing, i),
      );
    }
  });
}
