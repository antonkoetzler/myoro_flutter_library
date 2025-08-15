import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('createMyoroTooltipThemeData', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final tooltipThemeData = createMyoroTooltipThemeData(colorScheme, textTheme);

    expect(
      tooltipThemeData.decoration,
      BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
        border: Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      ),
    );
    expect(tooltipThemeData.textStyle, textTheme.bodySmall);
    expect(tooltipThemeData.padding, const EdgeInsets.all(10));
  });
}
