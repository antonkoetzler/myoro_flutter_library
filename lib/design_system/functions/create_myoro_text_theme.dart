import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [TextTheme] for [createMyoroThemeData]'s [ThemeData].
TextTheme createMyoroTextTheme(bool isDarkMode) {
  final typography = MyoroTypographyDesignSystem.instance;

  return TextTheme(
    /// Regular.
    bodyLarge: typography.regularLarge,
    bodyMedium: typography.regularMedium,
    bodySmall: typography.regularSmall,

    /// Italic.
    headlineLarge: typography.italicLarge,
    headlineMedium: typography.italicMedium,
    headlineSmall: typography.italicSmall,

    /// Semi bold.
    labelLarge: typography.semiBoldLarge,
    labelMedium: typography.semiBoldMedium,
    labelSmall: typography.semiBoldSmall,

    /// Bold.
    titleLarge: typography.boldLarge,
    titleMedium: typography.boldMedium,
    titleSmall: typography.boldSmall,

    /// Extra bold.
    displayLarge: typography.extraBoldLarge,
    displayMedium: typography.extraBoldMedium,
    displaySmall: typography.extraBoldSmall,
  );
}
