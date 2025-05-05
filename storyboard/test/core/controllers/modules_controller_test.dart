import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final modulesController = ModulesController();

  late final bool isDarkMode;
  late final ColorScheme colorScheme;
  late final TextTheme textTheme;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    isDarkMode = faker.randomGenerator.boolean();
    colorScheme = createMyoroColorScheme(isDarkMode);
    textTheme = createMyoroTextTheme(isDarkMode);
  });

  test('ModulesController.modules', () {
    expect(modulesController.modules.length, 2);
    expect(modulesController.modules.first is MainModule, isTrue);
    expect(modulesController.modules.last is WidgetShowcaseModule, isTrue);
  });

  test('ModulesController.themeExtensionsBuilder', () {
    expect(
      modulesController.themeExtenionsBuilder(colorScheme, textTheme).length,
      modulesController.modules
          .map((Module module) {
            return module.themeExtensionsBuilder(colorScheme, textTheme);
          })
          .expand((List<ThemeExtension> moduleThemeExtensions) {
            return moduleThemeExtensions;
          })
          .toList()
          .length,
    );
  });
}
