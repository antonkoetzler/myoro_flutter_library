import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDropdownThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroDropdownThemeExtension.builder(colorScheme);
    final borderSide = BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary);
    const radius = Radius.circular(kMyoroBorderRadiusLength);
    expect(themeExtension.spacing, 10);
    expect(themeExtension.menuBorder, BoxBorder.fromLTRB(bottom: borderSide, left: borderSide, right: borderSide));
    expect(themeExtension.menuBorderRadius, const BorderRadius.only(bottomLeft: radius, bottomRight: radius));
  });

  test('MyoroDropdownThemeExtension.lerp', () {
    final themeExtension1 = MyoroDropdownThemeExtension.fake();
    final themeExtension2 = MyoroDropdownThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.menuBorder,
        BoxBorder.lerp(themeExtension1.menuBorder, themeExtension2.menuBorder, i),
      );
      expect(
        lerpedThemeExtension.menuBorderRadius,
        BorderRadius.lerp(themeExtension1.menuBorderRadius, themeExtension2.menuBorderRadius, i),
      );
    }
  });
}
