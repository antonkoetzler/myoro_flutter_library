import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Class used to grab [TextStyle]s creates in [createTheme]
final class TypographyDesignSystem {
  /// Regular.
  static TextStyle regularSmall(BuildContext context) => context.textTheme.bodySmall!;
  static TextStyle regularMedium(BuildContext context) => context.textTheme.bodyMedium!;
  static TextStyle regularLarge(BuildContext context) => context.textTheme.bodyLarge!;

  /// Italic.
  static TextStyle italicSmall(BuildContext context) => context.textTheme.headlineSmall!;
  static TextStyle italicMedium(BuildContext context) => context.textTheme.headlineMedium!;
  static TextStyle italicLarge(BuildContext context) => context.textTheme.headlineLarge!;

  /// Semi bold.
  static TextStyle semiBoldSmall(BuildContext context) => context.textTheme.labelSmall!;
  static TextStyle semiBoldMedium(BuildContext context) => context.textTheme.labelMedium!;
  static TextStyle semiBoldLarge(BuildContext context) => context.textTheme.labelLarge!;

  /// Bold.
  static TextStyle boldSmall(BuildContext context) => context.textTheme.titleSmall!;
  static TextStyle boldMedium(BuildContext context) => context.textTheme.titleMedium!;
  static TextStyle boldLarge(BuildContext context) => context.textTheme.titleLarge!;

  /// Extra bold.
  static TextStyle extraBoldSmall(BuildContext context) => context.textTheme.displaySmall!;
  static TextStyle extraBoldMedium(BuildContext context) => context.textTheme.displayMedium!;
  static TextStyle extraBoldLarge(BuildContext context) => context.textTheme.displayLarge!;
}
