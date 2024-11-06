import 'package:flutter/material.dart';

/// Extension for [BuildContext].
extension MyoroBuildContextExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  TextTheme get textTheme => Theme.of(this).textTheme;
  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final themeExtension = Theme.of(this).extension<T>();
    if (themeExtension != null) return themeExtension;
    throw Exception('[BuildContextExtension.resolveThemeExtension]: [ThemeExtension] does not exist.');
  }
}
