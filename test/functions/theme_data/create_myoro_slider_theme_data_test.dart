import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [CreateMyoroSliderThemeData].
void main() {
  test('MyoroSliderThemeData', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final sliderTheme = createMyoroSliderThemeData(colorScheme);

    expect(
      sliderTheme,
      SliderThemeData(
        activeTrackColor: colorScheme.onPrimary,
        inactiveTrackColor: colorScheme.onPrimary.withValues(alpha: 0.5),
        thumbColor: colorScheme.onPrimary,
        overlayColor: MyoroColorDesignSystem.transparent,
      ),
    );
  });
}
