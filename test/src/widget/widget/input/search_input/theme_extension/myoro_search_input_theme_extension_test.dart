import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSearchInputThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroSearchInputThemeExtension.builder(colorScheme);
    expect(themeExtension.spacing, 10);
    expect(themeExtension.searchButtonIcon, Icons.search);
    expect(themeExtension.searchButtonLoadingSize, 20);
  });

  test('MyoroSearchInputThemeExtension.lerp', () {
    final themeExtension1 = MyoroSearchInputThemeExtension.fake();
    final themeExtension2 = MyoroSearchInputThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.searchButtonIcon,
        myoroLerp(themeExtension1.searchButtonIcon, themeExtension2.searchButtonIcon, i),
      );
      expect(
        lerpedThemeExtension.searchButtonLoadingSize,
        lerpDouble(themeExtension1.searchButtonLoadingSize, themeExtension2.searchButtonLoadingSize, i),
      );
    }
  });
}
