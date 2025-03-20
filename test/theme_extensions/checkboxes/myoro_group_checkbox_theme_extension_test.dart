import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroGroupCheckboxThemeExtension].
void main() {
  final themeExtension1 = MyoroGroupCheckboxThemeExtension.fake();
  final themeExtension2 = MyoroGroupCheckboxThemeExtension.fake();

  test('MyoroGroupCheckboxThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      direction: themeExtension2.direction,
      spacing: themeExtension2.spacing,
      runSpacing: themeExtension2.runSpacing,
    );
    expect(copiedThemeExtension.direction, themeExtension2.direction);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
    expect(copiedThemeExtension.runSpacing, themeExtension2.runSpacing);
  });

  test('MyoroGroupCheckboxThemeExtension.lerp', () {
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
