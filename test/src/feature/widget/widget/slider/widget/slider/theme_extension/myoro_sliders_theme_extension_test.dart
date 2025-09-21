import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSliderThemeExtension.builder', () {
    final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroSliderThemeExtension.builder(textTheme);
    expect(themeExtension.indicatorTextStyle, textTheme.bodySmall!);
    expect(themeExtension.indicatorTextAlignment, TextAlign.center);
  });

  test('MyoroSliderThemeExtension.lerp', () {
    final themeExtension1 = MyoroSliderThemeExtension.fake();
    final themeExtension2 = MyoroSliderThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.indicatorTextStyle,
        TextStyle.lerp(themeExtension1.indicatorTextStyle, themeExtension2.indicatorTextStyle, i),
      );
      expect(
        lerpedThemeExtension.indicatorTextAlignment,
        myoroFallbackLerp(themeExtension1.indicatorTextAlignment, themeExtension2.indicatorTextAlignment, i),
      );
    }
  });
}
