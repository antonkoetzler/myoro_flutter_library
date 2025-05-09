import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MyoroTooltipThemeExtension.fake();
  final themeExtension2 = MyoroTooltipThemeExtension.fake();

  test('MyoroTooltipThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(margin: themeExtension2.margin), themeExtension2);
  });

  test('MyoroTooltipThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.margin, EdgeInsets.lerp(themeExtension1.margin, themeExtension2.margin, i));
    }
  });

  test('MyoroTooltipThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroTooltipThemeExtension(\n'
      '  margin: ${themeExtension1.margin},\n'
      ');',
    );
  });
}
