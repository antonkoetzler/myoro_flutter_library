import 'package:flutter/material.dart';

/// Builder to create a custom [ColorScheme] instead of using [createMyoroColorScheme].
typedef MyoroAppColorSchemeBuilder = ColorScheme Function(ColorScheme myoroColorScheme);

/// Builder to create a custom [TextTheme] instead of using [createMyoroColorScheme].
typedef MyoroAppTextThemeBuilder = TextTheme Function(TextTheme myoroTextTheme);

/// To be able to grab the [ColorScheme] & [TextTheme] to build your [ThemeExtension]s correctly.
typedef MyoroAppThemeExtensionsBuilder =
    List<ThemeExtension> Function(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme);

/// [MaterialApp.builder]
typedef MyoroAppBuilder = Widget Function(BuildContext context, Widget? child);
