import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [ThemeData] for [MyoroMaterialApp].
ThemeData createTheme(bool isDarkMode) {
  final brightness = isDarkMode ? Brightness.dark : Brightness.light;
  final primary = isDarkMode ? DarkModeColorDesignSystem.primary : LightModeColorDesignSystem.primary;
  final secondary = isDarkMode ? DarkModeColorDesignSystem.secondary : LightModeColorDesignSystem.secondary;

  /// Function to create a [TextStyle] for [ThemeData.textTheme].
  TextStyle createTextStyle({
    required FontSizeEnum fontSize,
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

  return ThemeData(
    brightness: brightness,

    /// Colors.
    ///
    /// Solely to provide the colors for the base Flutter widgets.
    colorScheme: ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: secondary,
      secondary: primary,
      onSecondary: secondary,
      error: ColorDesignSystem.error,
      onError: ColorDesignSystem.onError,
      surface: primary,
      onSurface: secondary,
    ),

    /// Typography.
    ///
    /// Solely to provide the text styles for the base Flutter widgets & [TypographyDesignSystem].
    textTheme: TextTheme(
      /// Extra bold.
      displayLarge: createTextStyle(
        fontSize: FontSizeEnum.large,
        fontWeight: FontWeight.w800,
      ),
      displayMedium: createTextStyle(
        fontSize: FontSizeEnum.medium,
        fontWeight: FontWeight.w800,
      ),
      displaySmall: createTextStyle(
        fontSize: FontSizeEnum.small,
        fontWeight: FontWeight.w800,
      ),

      /// Italic.
      headlineLarge: createTextStyle(
        fontSize: FontSizeEnum.large,
        fontStyle: FontStyle.italic,
      ),
      headlineMedium: createTextStyle(
        fontSize: FontSizeEnum.medium,
        fontStyle: FontStyle.italic,
      ),
      headlineSmall: createTextStyle(
        fontSize: FontSizeEnum.small,
        fontStyle: FontStyle.italic,
      ),

      /// Bold.
      titleLarge: createTextStyle(
        fontSize: FontSizeEnum.large,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: createTextStyle(
        fontSize: FontSizeEnum.small,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: createTextStyle(
        fontSize: FontSizeEnum.small,
        fontWeight: FontWeight.bold,
      ),

      /// Regular.
      bodyLarge: createTextStyle(
        fontSize: FontSizeEnum.large,
      ),
      bodyMedium: createTextStyle(
        fontSize: FontSizeEnum.small,
      ),
      bodySmall: createTextStyle(
        fontSize: FontSizeEnum.small,
      ),

      /// Semi bold.
      labelLarge: createTextStyle(
        fontSize: FontSizeEnum.large,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: createTextStyle(
        fontSize: FontSizeEnum.small,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: createTextStyle(
        fontSize: FontSizeEnum.small,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
