import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [ThemeData] for [MyoroMaterialApp].
///
/// [ThemeData.colorScheme] & [ThemeData.textTheme] are only created to
/// provide defaults for the default Flutter widgets. [ThemeExtension]s,
/// [MyoroColorDesignSystem], & [MyoroTypographyDesignSystem] should be used for
/// creating & styling widgets.
ThemeData createMyoroThemeData(
  MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder, {
  required bool isDarkMode,
}) {
  final colorScheme = createMyoroColorScheme(isDarkMode);
  final textTheme = createMyoroTextTheme(isDarkMode);

  MyoroTypographyDesignSystem.textTheme = textTheme;

  return ThemeData(
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorScheme: colorScheme,
    textTheme: textTheme,
    sliderTheme: createMyoroSliderThemeData(colorScheme),
    tooltipTheme: createMyoroTooltipThemeData(colorScheme, textTheme),
    textSelectionTheme: createMyoroTextSelectionThemeData(colorScheme),
    extensions: [
      ...createMyoroThemeExtensions(colorScheme, textTheme),
      ...?themeExtensionsBuilder?.call(colorScheme, textTheme),
    ],
  );
}
