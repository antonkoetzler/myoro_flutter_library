import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Creates the [ThemeExtenion]s in `./lib/commons`.
///
/// TODO: Needs to be tested.
List<ThemeExtension> createCommonsThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [StoryboardScreenThemeExtension.builder(textTheme)];
}
