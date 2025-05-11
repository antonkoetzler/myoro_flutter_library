import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [ThemeData] for [MyoroApp].
///
/// [ThemeData.colorScheme] & [ThemeData.textTheme] are only created to
/// provide defaults for the default Flutter widgets. [ThemeExtension]s,
/// [MyoroColorDesignSystem], & [MyoroTypographyDesignSystem] should be used for
/// creating & styling widgets.
ThemeData createMyoroThemeData(
  MyoroAppColorSchemeBuilder? colorSchemeBuilder,
  MyoroAppTextThemeBuilder? textThemeBuilder,
  MyoroAppThemeExtensionsBuilder? themeExtensionsBuilder, {
  required bool isDarkMode,
}) {
  MyoroTypographyDesignSystem.isDarkMode = isDarkMode;

  final myoroColorScheme = createMyoroColorScheme(isDarkMode);
  final myoroTextTheme = createMyoroTextTheme(isDarkMode);

  final colorScheme = colorSchemeBuilder?.call(myoroColorScheme) ?? myoroColorScheme;
  final textTheme = textThemeBuilder?.call(myoroTextTheme) ?? myoroTextTheme;

  return ThemeData(
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorScheme: colorScheme,
    textTheme: textTheme,
    sliderTheme: createMyoroSliderThemeData(colorScheme),
    tooltipTheme: createMyoroTooltipThemeData(colorScheme, textTheme),
    textSelectionTheme: createMyoroTextSelectionThemeData(colorScheme),
    extensions: [
      ...createMyoroThemeExtensions(isDarkMode, colorScheme, textTheme),
      ...?themeExtensionsBuilder?.call(isDarkMode, colorScheme, textTheme),
    ],
  );
}
