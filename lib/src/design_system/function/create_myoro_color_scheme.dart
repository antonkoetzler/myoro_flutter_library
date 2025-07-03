// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [ColorScheme] for [createMyoroThemeData]'s [ThemeData].
ColorScheme createMyoroColorScheme(bool isDarkMode) {
  final brightness = isDarkMode ? Brightness.dark : Brightness.light;
  final primary = isDarkMode ? MyoroColors.gray1 : MyoroColors.gray3;
  final secondary = isDarkMode ? MyoroColors.gray3 : MyoroColors.gray1;

  return ColorScheme(
    brightness: brightness,
    primary: primary,
    onPrimary: secondary,
    secondary: primary,
    onSecondary: secondary,
    error: MyoroColors.red1,
    onError: MyoroColors.gray3,
    surface: primary,
    onSurface: secondary,
  );
}
