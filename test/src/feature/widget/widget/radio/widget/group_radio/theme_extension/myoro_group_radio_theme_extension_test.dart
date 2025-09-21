import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroGroupRadioThemeExtension.builder', () {
    const themeExtension = MyoroGroupRadioThemeExtension.builder();
    expect(themeExtension.spacing == 5, isTrue);
    expect(themeExtension.runSpacing == 5, isTrue);
  });

  test('MyoroGroupRadioThemeExtension.lerp', () {
    final themeExtension1 = MyoroGroupRadioThemeExtension.fake();
    final themeExtension2 = MyoroGroupRadioThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(lerpedThemeExtension.runSpacing, lerpDouble(themeExtension1.runSpacing, themeExtension2.runSpacing, i));
    }
  });
}
