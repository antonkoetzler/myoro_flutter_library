import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';

/// [Module] model of the main module.
final class MainModule implements Module {
  const MainModule();

  @override
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return const [MainScreenThemeExtension.builder()];
  }
}
