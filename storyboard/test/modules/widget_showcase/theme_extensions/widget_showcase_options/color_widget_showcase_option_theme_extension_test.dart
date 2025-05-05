import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final themeExtension1 = ColorWidgetShowcaseOptionThemeExtension.fake();
  final themeExtension2 = ColorWidgetShowcaseOptionThemeExtension.fake();

  test('ColorWidgetShowcaseOptionThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        itemPadding: themeExtension2.itemPadding,
        itemSpacing: themeExtension2.itemSpacing,
        itemColorSize: themeExtension2.itemColorSize,
      ),
      themeExtension2,
    );
  });

  test('ColorWidgetShowcaseOptionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.itemPadding,
        EdgeInsets.lerp(themeExtension1.itemPadding, themeExtension2.itemPadding, i),
      );
      expect(
        lerpedThemeExtension.itemSpacing,
        lerpDouble(themeExtension1.itemSpacing, themeExtension2.itemSpacing, i),
      );
      expect(
        lerpedThemeExtension.itemColorSize,
        lerpDouble(themeExtension1.itemColorSize, themeExtension2.itemColorSize, i),
      );
    }
  });

  test('ColorWidgetShowcaseOptionThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'ColorWidgetShowcaseOptionThemeExtension(\n'
      '  itemPadding: ${themeExtension1.itemPadding},\n'
      '  itemSpacing: ${themeExtension1.itemSpacing},\n'
      '  itemColorSize: ${themeExtension1.itemColorSize},\n'
      ');',
    );
  });
}
