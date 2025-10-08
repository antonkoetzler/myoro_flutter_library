import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/src/exports.dart';

part 'myoro_app_configuration.g.dart';

/// Configuration of [MyoroApp].
@immutable
@myoroModel
class MyoroAppConfiguration with _$MyoroAppConfigurationMixin {
  static const debugShowCheckedModeBannerDefaultValue = false;

  const MyoroAppConfiguration({
    this.title,
    this.themeMode,
    this.debugShowCheckedModeBanner = debugShowCheckedModeBannerDefaultValue,
    this.colorSchemeBuilder,
    this.textThemeBuilder,
    this.themeExtensionsBuilder,
    this.localizationsDelegates,
    this.supportedLocales,
    this.router,
    this.home,
    this.builder,
  }) : assert((router != null) ^ (home != null), '[MyoroApp]: [router] (x)or [home] must be provided.');

  factory MyoroAppConfiguration.fake() {
    final routerProvided = faker.randomGenerator.boolean();
    return MyoroAppConfiguration(
      title: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      themeMode: faker.randomGenerator.boolean() ? myoroFake<ThemeMode>() : null,
      colorSchemeBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<ColorScheme>()) : null,
      textThemeBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<TextTheme>()) : null,
      themeExtensionsBuilder: faker.randomGenerator.boolean() ? ((_, _, _) => []) : null,
      localizationsDelegates: faker.randomGenerator.boolean() ? const {} : null,
      supportedLocales: faker.randomGenerator.boolean() ? const {} : null,
      router: routerProvided ? MockRouterConfig<Object>() : null,
      home: routerProvided ? null : const SizedBox.shrink(),
      builder: faker.randomGenerator.boolean() ? ((_, _) => const SizedBox.shrink()) : null,
    );
  }

  /// Title of the application.
  ///
  /// However, a plugin like [window_manager] needs to be used
  /// to for example, set the title of the window on desktop.
  final String? title;

  /// Default theme (dark or light mode) of the application.
  final ThemeMode? themeMode;

  /// [MaterialApp.debugShowCheckedModeBanner]
  final bool debugShowCheckedModeBanner;

  /// Builder to create a custom [ColorScheme] instead of using [createMyoroColorScheme].
  final MyoroAppColorSchemeBuilder? colorSchemeBuilder;

  /// Builder to create a custom [TextTheme] instead of using [createMyoroColorScheme].
  final MyoroAppTextThemeBuilder? textThemeBuilder;

  /// [ThemeExtension]s for the widgets in your application.
  ///
  /// Will not override the Myoro [ThemeExtension]s.
  final MyoroAppThemeExtensionsBuilder? themeExtensionsBuilder;

  /// Localization delegate setup.
  final Iterable<LocalizationsDelegate>? localizationsDelegates;

  /// Supported setups in localization setup.
  final Iterable<Locale>? supportedLocales;

  /// Router to support packages such as go_router.
  final RouterConfig<Object>? router;

  /// Entry point for the application when a [MyoroAppConfiguration.router] is not being used.
  final Widget? home;

  /// [MaterialApp.builder]. Used to insert [Widget]s at the top level of the [Widget] tree.
  final MyoroAppBuilder? builder;
}
