import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTooltipThemeExtension.builder', () {
    const themeExtension = MyoroTooltipThemeExtension.builder();
    expect(themeExtension.margin, EdgeInsets.zero);
  });

  test('MyoroTooltipThemeExtension.lerp', () {
    final themeExtension1 = MyoroTooltipThemeExtension.fake();
    final themeExtension2 = MyoroTooltipThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.margin, EdgeInsets.lerp(themeExtension1.margin, themeExtension2.margin, i));
    }
  });
}
