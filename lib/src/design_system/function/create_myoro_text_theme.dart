import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [TextTheme] for [createMyoroThemeData]'s [ThemeData].
TextTheme createMyoroTextTheme(bool isDarkMode) {
  final typography = MyoroTypography(isDarkMode);

  return TextTheme(
    /// Regular.
    bodyLarge: typography.regular.large,
    bodyMedium: typography.regular.medium,
    bodySmall: typography.regular.small,

    /// Italic.
    headlineLarge: typography.italic.large,
    headlineMedium: typography.italic.medium,
    headlineSmall: typography.italic.small,

    /// Semi bold.
    labelLarge: typography.semiBold.large,
    labelMedium: typography.semiBold.medium,
    labelSmall: typography.semiBold.small,

    /// Bold.
    titleLarge: typography.bold.large,
    titleMedium: typography.bold.medium,
    titleSmall: typography.bold.small,

    /// Extra bold.
    displayLarge: typography.extraBold.large,
    displayMedium: typography.extraBold.medium,
    displaySmall: typography.extraBold.small,
  );
}
