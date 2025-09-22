import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAppConfiguration assertion case', () {
    expect(() => MyoroAppConfiguration(), throwsAssertionError);
  });

  test('MyoroAppConfiguration.copyWith', () {
    final firstConfiguration = MyoroAppConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroAppConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
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
        routerProvided: secondConfiguration.router != null,
        home: secondConfiguration.home,
        homeProvided: secondConfiguration.home != null,
        builder: secondConfiguration.builder,
        builderProvided: secondConfiguration.builder != null,
      ),
      secondConfiguration,
    );
  });
}
