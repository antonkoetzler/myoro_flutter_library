import 'package:flutter/material.dart';

/// Extension for [BuildContext].
extension BuildContextExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
