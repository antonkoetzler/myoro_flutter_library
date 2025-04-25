import 'package:flutter/material.dart';

/// Model of a module of Storyboard.
///
/// Stores all configuration that a module needs to execute before running.
abstract interface class Module {
  const Module();

  /// [ThemeExtension]s builder.
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme);
}
