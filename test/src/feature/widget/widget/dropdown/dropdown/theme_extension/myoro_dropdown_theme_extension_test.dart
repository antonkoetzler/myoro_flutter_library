import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroDropdownThemeExtension', () {
    test('constructor with default values', () {
      const themeExtension = MyoroDropdownThemeExtension();
      expect(themeExtension.spacing, isNull);
    });

    test('constructor with custom values', () {
      const spacing = 16.0;
      const themeExtension = MyoroDropdownThemeExtension(spacing: spacing);
      expect(themeExtension.spacing, spacing);
    });

    test('fake constructor', () {
      final themeExtension = MyoroDropdownThemeExtension.fake();
      expect(themeExtension.spacing, isA<double>());
    });

    test('builder constructor', () {
      const colorScheme = ColorScheme.light();
      const themeExtension = MyoroDropdownThemeExtension.builder(colorScheme);
      expect(themeExtension.spacing, kMyoroMultiplier * 2);
    });

    test('lerp method with same type', () {
      const themeExtension1 = MyoroDropdownThemeExtension(spacing: 10.0);
      const themeExtension2 = MyoroDropdownThemeExtension(spacing: 20.0);
      final result = themeExtension1.lerp(themeExtension2, 0.5);
      expect(result, isA<MyoroDropdownThemeExtension>());
      expect(result.spacing, 15.0);
    });

    test('lerp method with different type', () {
      const themeExtension1 = MyoroDropdownThemeExtension(spacing: 10.0);
      final result = themeExtension1.lerp(null, 0.5);
      expect(result, themeExtension1);
    });

    test('lerp method with t = 0', () {
      const themeExtension1 = MyoroDropdownThemeExtension(spacing: 10.0);
      const themeExtension2 = MyoroDropdownThemeExtension(spacing: 20.0);
      final result = themeExtension1.lerp(themeExtension2, 0.0);
      expect(result.spacing, 10.0);
    });

    test('lerp method with t = 1', () {
      const themeExtension1 = MyoroDropdownThemeExtension(spacing: 10.0);
      const themeExtension2 = MyoroDropdownThemeExtension(spacing: 20.0);
      final result = themeExtension1.lerp(themeExtension2, 1.0);
      expect(result.spacing, 20.0);
    });

    test('implements MyoroDropdownStyle', () {
      const themeExtension = MyoroDropdownThemeExtension(spacing: 16.0);
      expect(themeExtension, isA<MyoroDropdownStyle>());
      expect(themeExtension.spacing, 16.0);
    });
  });
}
