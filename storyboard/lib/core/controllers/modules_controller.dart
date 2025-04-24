import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Controller that stores all of the [Module]s of the application.
///
/// Each module is a folder within the `./lib/modules` directory.
///
/// TODO: Needs to be tested.
final class ModulesController {
  /// All of the modules.
  final Set<Module> modules = const {MainModule(), WidgetShowcaseModule()};

  /// Generates the [List] of [ThemeExtension]s of each [Module] in [modules].
  List<ThemeExtension> themeExtenionsBuilder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    final themeExtensions =
        modules
            .map((Module module) {
              return module.themeExtensionsBuilder(colorScheme, textTheme);
            })
            .expand((List<ThemeExtension> moduleThemeExtensions) {
              return moduleThemeExtensions;
            })
            .toList();
    return themeExtensions;
  }
}
