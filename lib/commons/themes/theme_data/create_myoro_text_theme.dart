import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [TextTheme] for [createMyoroThemeData]'s [ThemeData].
TextTheme createMyoroTextTheme(bool isDarkMode) {
  final secondary = isDarkMode ? MyoroDarkModeColorTheme.secondary : MyoroLightModeColorTheme.secondary;

  TextStyle createTextStyle({
    required MyoroFontSizeEnum fontSize,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: secondary,
      fontSize: fontSize.size,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  return TextTheme(
    /// Regular.
    bodyLarge: createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
    ),
    bodyMedium: createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
    ),
    bodySmall: createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
    ),

    /// Italic.
    headlineLarge: createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontStyle: FontStyle.italic,
    ),
    headlineMedium: createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontStyle: FontStyle.italic,
    ),
    headlineSmall: createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontStyle: FontStyle.italic,
    ),

    /// Semi bold.
    labelLarge: createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.w600,
    ),

    /// Bold.
    titleLarge: createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.bold,
    ),

    /// Extra bold.
    displayLarge: createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.w800,
    ),
    displayMedium: createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.w800,
    ),
    displaySmall: createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.w800,
    ),
  );
}
