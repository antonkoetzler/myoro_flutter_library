import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [TextTheme] for [createMyoroThemeData]'s [ThemeData].
TextTheme createMyoroTextTheme(bool isDarkMode) {
  final typography = MyoroTypographyDesignSystem.instance;

  return TextTheme(
    /// Regular.
    bodyLarge: typography.regularSmall,
    bodyMedium: typography.regularMedium,
    bodySmall: typography.regularLarge,

    /// Italic.
    headlineLarge: typography.italicSmall,
    headlineMedium: typography.italicMedium,
    headlineSmall: typography.italicLarge,

    /// Semi bold.
    labelLarge: typography.semiBoldSmall,
    labelMedium: typography.semiBoldMedium,
    labelSmall: typography.semiBoldLarge,

    /// Bold.
    titleLarge: typography.boldSmall,
    titleMedium: typography.boldMedium,
    titleSmall: typography.boldLarge,

    /// Extra bold.
    displayLarge: typography.extraBoldSmall,
    displayMedium: typography.extraBoldMedium,
    displaySmall: typography.extraBoldLarge,
  );
}
