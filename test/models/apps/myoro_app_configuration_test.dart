import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroAppConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = _configuration;
  });

  test('MyoroAppConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = _configuration;
    expect(
      model.copyWith(
        title: otherModel.title,
        titleProvided: otherModel.title != null,
        themeMode: otherModel.themeMode,
        themeModeProvided: otherModel.themeMode != null,
        colorSchemeBuilder: otherModel.colorSchemeBuilder,
        colorSchemeBuilderProvided: otherModel.colorSchemeBuilder != null,
        textThemeBuilder: otherModel.textThemeBuilder,
        textThemeBuilderProvided: otherModel.textThemeBuilder != null,
        themeExtensionsBuilder: otherModel.themeExtensionsBuilder,
        themeExtensionsBuilderProvided: otherModel.themeExtensionsBuilder != null,
        localizationsDelegates: otherModel.localizationsDelegates,
        localizationsDelegatesProvided: otherModel.localizationsDelegates != null,
        supportedLocales: otherModel.supportedLocales,
        supportedLocalesProvided: otherModel.supportedLocales != null,
        router: otherModel.router,
        routerProvided: otherModel.router != null,
        home: otherModel.home,
        homeProvided: otherModel.home != null,
      ),
      otherModel,
    );
  });

  test('MyoroAppConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroAppConfiguration(\n'
      '  title: ${model.title},\n'
      '  themeMode: ${model.themeMode},\n'
      '  colorSchemeBuilder: ${model.colorSchemeBuilder},\n'
      '  textThemeBuilder: ${model.textThemeBuilder},\n'
      '  themeExtensionsBuilder: ${model.themeExtensionsBuilder},\n'
      '  localizationsDelegates: ${model.localizationsDelegates},\n'
      '  supportedLocales: ${model.supportedLocales},\n'
      '  router: ${model.router},\n'
      '  home: ${model.home},\n'
      ');',
    );
  });
}

MyoroAppConfiguration get _configuration {
  final bool isDarkMode = faker.randomGenerator.boolean();
  final ColorScheme colorScheme = createMyoroColorScheme(isDarkMode);
  final TextTheme textTheme = createMyoroTextTheme(isDarkMode);
  final List<ThemeExtension> themeExtensions = createMyoroThemeExtensions(
    isDarkMode,
    colorScheme,
    textTheme,
  );

  return MyoroAppConfiguration(
    title: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
    themeMode:
        faker.randomGenerator.boolean()
            ? ThemeMode.values[faker.randomGenerator.integer(ThemeMode.values.length)]
            : null,
    colorSchemeBuilder: faker.randomGenerator.boolean() ? ((_) => colorScheme) : null,
    textThemeBuilder: faker.randomGenerator.boolean() ? ((_) => textTheme) : null,
    themeExtensionsBuilder:
        faker.randomGenerator.boolean() ? ((_, __, ___) => themeExtensions) : null,
    home: const SizedBox.shrink(),
  );
}
