import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class _FooThemeExtension extends ThemeExtension<_FooThemeExtension> {
  const _FooThemeExtension();

  @override
  _FooThemeExtension copyWith() => this;

  @override
  ThemeExtension<_FooThemeExtension> lerp(_, __) => this;
}

/// Unit test of [createMyoroThemeData].
void main() {
  void createAndExpectThemeData({
    required bool isDarkMode,
    List<ThemeExtension> themeExtensions = const [],
  }) {
    final themeData = createMyoroThemeData(
        themeExtensions.isNotEmpty ? (_, __) => themeExtensions : null,
        isDarkMode: isDarkMode);

    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final comparisonThemeData = ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorScheme: colorScheme,
      textTheme: textTheme,
      sliderTheme: createMyoroSliderThemeData(colorScheme),
      tooltipTheme: createMyoroTooltipThemeData(colorScheme, textTheme),
      textSelectionTheme: createMyoroTextSelectionThemeData(colorScheme),
      extensions: [
        ...createMyoroThemeExtensions(colorScheme, textTheme),
        ...themeExtensions,
      ],
    );

    expect(themeData.brightness, comparisonThemeData.brightness);
    expect(themeData.colorScheme, comparisonThemeData.colorScheme);
    expect(themeData.textTheme, themeData.textTheme);
    expect(themeData.sliderTheme, comparisonThemeData.sliderTheme);
    expect(themeData.tooltipTheme, comparisonThemeData.tooltipTheme);
    expect(
        themeData.textSelectionTheme, comparisonThemeData.textSelectionTheme);
    expect(themeData.extensions.length, comparisonThemeData.extensions.length);
  }

  test('createMyoroThemeData', () {
    createAndExpectThemeData(isDarkMode: true);
    createAndExpectThemeData(isDarkMode: false);
    createAndExpectThemeData(
        isDarkMode: faker.randomGenerator.boolean(),
        themeExtensions: const [_FooThemeExtension()]);
  });
}
