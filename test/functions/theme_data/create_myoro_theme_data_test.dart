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
    ColorScheme? colorScheme,
    TextTheme? textTheme,
    List<ThemeExtension> themeExtensions = const [],
  }) {
    MyoroTypographyDesignSystem.isDarkMode = isDarkMode;

    final ColorScheme colorSchemeInUse = colorScheme ?? createMyoroColorScheme(isDarkMode);
    final TextTheme textThemeInUse = textTheme ?? createMyoroTextTheme(isDarkMode);

    final themeData = createMyoroThemeData(
      colorScheme != null ? (_) => colorSchemeInUse : null,
      textTheme != null ? (_) => textThemeInUse : null,
      themeExtensions.isNotEmpty ? (_, __) => themeExtensions : null,
      isDarkMode: isDarkMode,
    );

    final comparisonThemeData = ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorScheme: colorSchemeInUse,
      textTheme: textThemeInUse,
      sliderTheme: createMyoroSliderThemeData(colorSchemeInUse),
      tooltipTheme: createMyoroTooltipThemeData(colorSchemeInUse, textThemeInUse),
      textSelectionTheme: createMyoroTextSelectionThemeData(colorSchemeInUse),
      extensions: [
        ...createMyoroThemeExtensions(colorSchemeInUse, textThemeInUse),
        ...themeExtensions,
      ],
    );

    expect(themeData.brightness, comparisonThemeData.brightness);
    expect(themeData.colorScheme, comparisonThemeData.colorScheme);
    expect(themeData.textTheme, themeData.textTheme);
    expect(themeData.sliderTheme, comparisonThemeData.sliderTheme);
    expect(themeData.tooltipTheme, comparisonThemeData.tooltipTheme);
    expect(themeData.textSelectionTheme, comparisonThemeData.textSelectionTheme);
    expect(themeData.extensions.length, comparisonThemeData.extensions.length);
  }

  test('createMyoroThemeData', () {
    createAndExpectThemeData(isDarkMode: true);
    createAndExpectThemeData(isDarkMode: false);
    createAndExpectThemeData(
      isDarkMode: faker.randomGenerator.boolean(),
      themeExtensions: const [_FooThemeExtension()],
    );
  });
}
