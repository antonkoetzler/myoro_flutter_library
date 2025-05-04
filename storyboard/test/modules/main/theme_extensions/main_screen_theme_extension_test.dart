import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final themeExtension1 = MainScreenThemeExtension.fake();
  final themeExtension2 = MainScreenThemeExtension.fake();

  test('MainScreenThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        widgetCategoryDropdownButtonPadding:
            themeExtension2.widgetCategoryDropdownButtonPadding,
      ),
      themeExtension2,
    );
  });

  test('MainScreenThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetCategoryDropdownButtonPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetCategoryDropdownButtonPadding,
          themeExtension2.widgetCategoryDropdownButtonPadding,
          i,
        ),
      );
    }
  });

  test('MainScreenThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MainScreenThemeExtension(\n'
      '  widgetCategoryDropdownButtonPadding: ${themeExtension1.widgetCategoryDropdownButtonPadding},\n'
      ');',
    );
  });
}
