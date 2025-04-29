import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:storyboard/storyboard.dart';

/// Creates all [ThemeExtension]s used in the storyboard.
///
/// TODO: Needs to be tested.
List<ThemeExtension> createStoryboardThemeExtensions(
  bool isDarkMode,
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  final modulesController = KiwiContainer().resolve<ModulesController>();
  return [
    ...modulesController.themeExtenionsBuilder(colorScheme, textTheme),
    ..._createStoryboardCommonsThemeExtensions(colorScheme, textTheme),
  ];
}

/// Creates the [ThemeExtenion]s in `./lib/commons`.
List<ThemeExtension> _createStoryboardCommonsThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [..._createScreenThemeExtensions(textTheme)];
}

List<ThemeExtension> _createScreenThemeExtensions(TextTheme textTheme) {
  return [StoryboardScreenThemeExtension.builder(textTheme)];
}
