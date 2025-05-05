import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final kiwiContainer = KiwiContainer();

  late final bool isDarkMode;
  late final ColorScheme colorScheme;
  late final TextTheme textTheme;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    isDarkMode = faker.randomGenerator.boolean();
    colorScheme = createMyoroColorScheme(isDarkMode);
    textTheme = createMyoroTextTheme(isDarkMode);
  });

  setUp(() {
    kiwiContainer.registerSingleton<ModulesController>((_) => ModulesController());
  });

  tearDown(() {
    kiwiContainer.clear();
  });

  test('createStoryboardThemeExtensions', () {
    final themeExtensions = createStoryboardThemeExtensions(isDarkMode, colorScheme, textTheme);
    expect(
      themeExtensions.length,
      kiwiContainer
              .resolve<ModulesController>()
              .themeExtenionsBuilder(colorScheme, textTheme)
              .length +
          1,
    );
  });
}
