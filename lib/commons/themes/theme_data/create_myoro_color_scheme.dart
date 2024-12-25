import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [ColorScheme] for [createMyoroThemeData]'s [ThemeData].
ColorScheme createMyoroColorScheme(bool isDarkMode) {
  final brightness = isDarkMode ? Brightness.dark : Brightness.light;
  final primary = isDarkMode ? MyoroDarkModeColorTheme.primary : MyoroLightModeColorTheme.primary;
  final secondary = isDarkMode ? MyoroDarkModeColorTheme.secondary : MyoroLightModeColorTheme.secondary;

  return ColorScheme(
    brightness: brightness,
    primary: primary,
    onPrimary: secondary,
    secondary: primary,
    onSecondary: secondary,
    error: MyoroColorTheme.error,
    onError: MyoroColorTheme.onError,
    surface: primary,
    onSurface: secondary,
  );
}
