import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSlidersThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroSlidersThemeExtension.builder(textTheme);
    expect(themeExtension.indicatorTextStyle, textTheme.bodySmall!);
    expect(themeExtension.indicatorTextAlignment, TextAlign.center);
  });

  test('MyoroSlidersThemeExtension.lerp', () {
    final themeExtension1 = MyoroSlidersThemeExtension.fake();
    final themeExtension2 = MyoroSlidersThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.indicatorTextStyle,
        TextStyle.lerp(themeExtension1.indicatorTextStyle, themeExtension2.indicatorTextStyle, i),
      );
      expect(
        lerpedThemeExtension.indicatorTextAlignment,
        myoroLerp(themeExtension1.indicatorTextAlignment, themeExtension2.indicatorTextAlignment, i),
      );
    }
  });
}
