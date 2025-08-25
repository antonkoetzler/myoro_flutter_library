import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_configuration.g.dart';

/// Configuration of [MyoroApp].
@immutable
@myoroModel
class MyoroAppConfiguration with _$MyoroAppConfigurationMixin {
  const MyoroAppConfiguration({
    this.title,
    this.themeMode,
    this.colorSchemeBuilder,
    this.textThemeBuilder,
    this.themeExtensionsBuilder,
    this.localizationsDelegates,
    this.supportedLocales,
    this.router,
    this.home,
    this.builder,
  }) : assert((router != null) ^ (home != null), '[MyoroApp]: [router] (x)or [home] must be provided.');

  /// Title of the application.
  ///
  /// However, a plugin like [window_manager] needs to be used
  /// to for example, set the title of the window on desktop.
  final String? title;

  /// Default theme (dark or light mode) of the application.
  final ThemeMode? themeMode;

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

  MyoroAppConfiguration copyWith({
    String? title,
    bool titleProvided = true,
    ThemeMode? themeMode,
    bool themeModeProvided = true,
    MyoroAppColorSchemeBuilder? colorSchemeBuilder,
    bool colorSchemeBuilderProvided = true,
    MyoroAppTextThemeBuilder? textThemeBuilder,
    bool textThemeBuilderProvided = true,
    MyoroAppThemeExtensionsBuilder? themeExtensionsBuilder,
    bool themeExtensionsBuilderProvided = true,
    Iterable<LocalizationsDelegate>? localizationsDelegates,
    bool localizationsDelegatesProvided = true,
    Iterable<Locale>? supportedLocales,
    bool supportedLocalesProvided = true,
    RouterConfig<Object>? router,
    bool routerProvided = true,
    Widget? home,
    bool homeProvided = true,
    MyoroAppBuilder? builder,
    bool builderProvided = true,
  }) {
    return MyoroAppConfiguration(
      title: titleProvided ? (title ?? this.title) : null,
      themeMode: themeModeProvided ? (themeMode ?? this.themeMode) : null,
      colorSchemeBuilder: colorSchemeBuilderProvided ? (colorSchemeBuilder ?? this.colorSchemeBuilder) : null,
      textThemeBuilder: textThemeBuilderProvided ? (textThemeBuilder ?? this.textThemeBuilder) : null,
      themeExtensionsBuilder: themeExtensionsBuilderProvided
          ? (themeExtensionsBuilder ?? this.themeExtensionsBuilder)
          : null,
      localizationsDelegates: localizationsDelegatesProvided
          ? (localizationsDelegates ?? this.localizationsDelegates)
          : null,
      supportedLocales: supportedLocalesProvided ? (supportedLocales ?? this.supportedLocales) : null,
      router: routerProvided ? (router ?? this.router) : null,
      home: homeProvided ? (home ?? this.home) : null,
      builder: builderProvided ? (builder ?? this.builder) : null,
    );
  }
}
