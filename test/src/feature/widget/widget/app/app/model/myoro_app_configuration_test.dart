import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAppConfiguration assertion case', () {
    expect(() => MyoroAppConfiguration(), throwsAssertionError);
  });

  test('MyoroAppConfiguration.copyWith', () {
    final routerProvided = faker.randomGenerator.boolean();
    var firstConfiguration = MyoroAppConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroAppConfiguration.fake();
    firstConfiguration = firstConfiguration.copyWith(
      title: secondConfiguration.title,
      titleProvided: secondConfiguration.title != null,
      themeMode: secondConfiguration.themeMode,
      themeModeProvided: secondConfiguration.themeMode != null,
      colorSchemeBuilder: secondConfiguration.colorSchemeBuilder,
      colorSchemeBuilderProvided: secondConfiguration.colorSchemeBuilder != null,
      textThemeBuilder: secondConfiguration.textThemeBuilder,
      textThemeBuilderProvided: secondConfiguration.textThemeBuilder != null,
      themeExtensionsBuilder: secondConfiguration.themeExtensionsBuilder,
      themeExtensionsBuilderProvided: secondConfiguration.themeExtensionsBuilder != null,
      localizationsDelegates: secondConfiguration.localizationsDelegates,
      localizationsDelegatesProvided: secondConfiguration.localizationsDelegates != null,
      supportedLocales: secondConfiguration.supportedLocales,
      supportedLocalesProvided: secondConfiguration.supportedLocales != null,
      router: secondConfiguration.router,
      routerProvided: routerProvided,
      home: secondConfiguration.home,
      homeProvided: routerProvided,
      builder: secondConfiguration.builder,
      builderProvided: secondConfiguration.builder != null,
    );
  });
}
