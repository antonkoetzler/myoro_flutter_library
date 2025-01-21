import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroPieGraphWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroPieGraphWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroPieGraphWidgetShowcaseThemeExtension.fake();

  test('MyoroPieGraphWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      centerWidgetBorderRadius: themeExtension2.centerWidgetBorderRadius,
      centerWidgetSize: themeExtension2.centerWidgetSize,
    );
    expect(copiedThemeExtension.centerWidgetBorderRadius, themeExtension2.centerWidgetBorderRadius);
    expect(copiedThemeExtension.centerWidgetSize, themeExtension2.centerWidgetSize);
  });

  test('MyoroPieGraphWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.centerWidgetBorderRadius,
        BorderRadius.lerp(themeExtension1.centerWidgetBorderRadius, themeExtension2.centerWidgetBorderRadius, i),
      );
      expect(
        lerpedThemeExtension.centerWidgetSize,
        lerpDouble(themeExtension1.centerWidgetSize, themeExtension2.centerWidgetSize, i),
      );
    }
  });
}

