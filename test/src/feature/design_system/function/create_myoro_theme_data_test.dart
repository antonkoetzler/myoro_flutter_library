import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final isDarkMode = faker.randomGenerator.boolean();
  final colorScheme = createMyoroColorScheme(isDarkMode);
  final textTheme = createMyoroTextTheme(isDarkMode);
  final defaultExtensions = createMyoroThemeExtensions(isDarkMode, colorScheme, textTheme);

  test('createMyoroThemeData with only required arguments provided', () {
    final themeData = createMyoroThemeData(null, null, null, isDarkMode: isDarkMode);

    expect(themeData.brightness, isDarkMode ? Brightness.dark : Brightness.light);
    expect(themeData.colorScheme, colorScheme);
    expect(themeData.sliderTheme, createMyoroSliderThemeData(colorScheme));
    expect(themeData.tooltipTheme, createMyoroTooltipThemeData(colorScheme, textTheme));
    expect(themeData.textSelectionTheme, createMyoroTextSelectionThemeData(colorScheme));
    expect(themeData.extensions.length, defaultExtensions.length);
  });

  test('createMyoroThemeData with all arguments provided', () {
    final extensions = [const MockThemeExtension()];
    final themeData = createMyoroThemeData(
      (_) => colorScheme,
      (_) => textTheme,
      (_, _, _) => extensions,
      isDarkMode: isDarkMode,
    );

    expect(themeData.brightness, isDarkMode ? Brightness.dark : Brightness.light);
    expect(themeData.colorScheme, colorScheme);
    expect(themeData.sliderTheme, createMyoroSliderThemeData(colorScheme));
    expect(themeData.tooltipTheme, createMyoroTooltipThemeData(colorScheme, textTheme));
    expect(themeData.textSelectionTheme, createMyoroTextSelectionThemeData(colorScheme));
    expect(themeData.extensions.length, defaultExtensions.length + extensions.length);
  });
}
