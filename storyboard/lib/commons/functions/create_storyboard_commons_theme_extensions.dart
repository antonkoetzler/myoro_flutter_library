import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Creates the [ThemeExtenion]s in `./lib/commons`.
///
/// TODO: Needs to be tested.
List<ThemeExtension> createStoryboardCommonsThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ..._createDropdownThemeExtensions(),
    ..._createScreenThemeExtensions(textTheme),
  ];
}

List<ThemeExtension> _createDropdownThemeExtensions() {
  return const [StoryboardColorDropdownThemeExtension.builder()];
}

List<ThemeExtension> _createScreenThemeExtensions(TextTheme textTheme) {
  return [StoryboardScreenThemeExtension.builder(textTheme)];
}
