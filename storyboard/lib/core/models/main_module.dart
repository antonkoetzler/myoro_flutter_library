import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [Module] model of the main module.
///
/// TODO: Needs to be tested.
final class MainModule implements Module {
  const MainModule();

  @override
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return const [MainScreenThemeExtension.builder()];
  }
}
