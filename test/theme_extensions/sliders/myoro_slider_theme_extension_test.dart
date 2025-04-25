import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroSliderThemeExtension].
void main() {
  late final MyoroSliderThemeExtension themeExtension1;
  late final MyoroSliderThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroSliderThemeExtension.fake();
    themeExtension2 = MyoroSliderThemeExtension.fake();
  });

  test('MyoroSliderThemeExtension.copyWith', () {
    MyoroSliderThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      labelTextStyle: themeExtension2.labelTextStyle,
      sliderPadding: themeExtension2.sliderPadding,
      indicatorTextStyle: themeExtension2.indicatorTextStyle,
      indicatorTextAlignment: themeExtension2.indicatorTextAlignment,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroSliderThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.labelTextStyle,
        TextStyle.lerp(themeExtension1.labelTextStyle, themeExtension2.labelTextStyle, i),
      );
      expect(
        lerpedThemeExtension.sliderPadding,
        EdgeInsets.lerp(themeExtension1.sliderPadding, themeExtension2.sliderPadding, i),
      );
      expect(
        lerpedThemeExtension.indicatorTextStyle,
        TextStyle.lerp(themeExtension1.indicatorTextStyle, themeExtension2.indicatorTextStyle, i),
      );
      expect(
        lerpedThemeExtension.indicatorTextAlignment,
        myoroLerp(
          themeExtension1.indicatorTextAlignment,
          themeExtension2.indicatorTextAlignment,
          i,
        ),
      );
    }
  });
}
