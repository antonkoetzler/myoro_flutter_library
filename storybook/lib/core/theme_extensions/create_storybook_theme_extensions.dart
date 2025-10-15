import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:storybook/storybook.dart';

/// Creates all [ThemeExtension]s used in the storybook.
List<ThemeExtension> createStorybookThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  final modulesController = KiwiContainer().resolve<ModulesController>();
  return [
    ...modulesController.themeExtenionsBuilder(colorScheme, textTheme),
    ..._createStorybookCommonsThemeExtensions(colorScheme, textTheme),
  ];
}

/// Creates the [ThemeExtenion]s in `./lib/commons`.
List<ThemeExtension> _createStorybookCommonsThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [..._createScreenThemeExtensions(textTheme)];
}

List<ThemeExtension> _createScreenThemeExtensions(TextTheme textTheme) {
  return [StorybookScreenThemeExtension.builder(textTheme)];
}
