import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  test('MainScreenThemeExtension.builder', () {
    const themeExtension = MainScreenThemeExtension.builder();
    expect(themeExtension.spacing, 10);
    expect(themeExtension.widgetListingAccordionItemContent, const EdgeInsets.all(10));
  });

  test('MainScreenThemeExtension.lerp', () {
    final themeExtension1 = MainScreenThemeExtension.fake();
    final themeExtension2 = MainScreenThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.widgetListingAccordionItemContent,
        EdgeInsets.lerp(
          themeExtension1.widgetListingAccordionItemContent,
          themeExtension2.widgetListingAccordionItemContent,
          i,
        ),
      );
    }
  });
}
