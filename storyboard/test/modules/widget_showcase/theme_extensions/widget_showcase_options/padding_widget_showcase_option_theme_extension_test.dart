import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final themeExtension1 = PaddingWidgetShowcaseOptionThemeExtension.fake();
  final themeExtension2 = PaddingWidgetShowcaseOptionThemeExtension.fake();

  test('PaddingWidgetShowcaseOptionThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(spacing: themeExtension2.spacing),
      themeExtension2,
    );
  });

  test('PaddingWidgetShowcaseOptionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });

  test('PaddingWidgetShowcaseOptionThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'PaddingWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: ${themeExtension1.spacing},\n'
      ');',
    );
  });
}
