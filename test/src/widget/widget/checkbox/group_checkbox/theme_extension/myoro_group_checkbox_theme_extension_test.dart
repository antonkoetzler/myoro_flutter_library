import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroGroupCheckboxThemeExtension.builder', () {
    const themeExtension = MyoroGroupCheckboxThemeExtension.builder();
    expect(themeExtension.spacing, 5);
    expect(themeExtension.runSpacing, 5);
  });

  test('MyoroGroupCheckboxThemeExtension.lerp', () {
    final themeExtension1 = MyoroGroupCheckboxThemeExtension.fake();
    final themeExtension2 = MyoroGroupCheckboxThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(lerpedThemeExtension.runSpacing, lerpDouble(themeExtension1.runSpacing, themeExtension2.runSpacing, i));
    }
  });
}
