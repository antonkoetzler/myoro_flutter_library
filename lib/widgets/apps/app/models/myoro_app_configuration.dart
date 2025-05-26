import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroApp].
class MyoroAppConfiguration extends Equatable {
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
  }) : assert((router != null) ^ (home != null), '[MyoroApp]: [router] (x)or [home] must be provided.');

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
  }) {
    return MyoroAppConfiguration(
      title: titleProvided ? (title ?? this.title) : null,
      themeMode: themeModeProvided ? (themeMode ?? this.themeMode) : null,
      colorSchemeBuilder: colorSchemeBuilderProvided ? (colorSchemeBuilder ?? this.colorSchemeBuilder) : null,
      textThemeBuilder: textThemeBuilderProvided ? (textThemeBuilder ?? this.textThemeBuilder) : null,
      themeExtensionsBuilder:
          themeExtensionsBuilderProvided ? (themeExtensionsBuilder ?? this.themeExtensionsBuilder) : null,
      localizationsDelegates:
          localizationsDelegatesProvided ? (localizationsDelegates ?? this.localizationsDelegates) : null,
      supportedLocales: supportedLocalesProvided ? (supportedLocales ?? this.supportedLocales) : null,
      router: routerProvided ? (router ?? this.router) : null,
      home: homeProvided ? (home ?? this.home) : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      title,
      themeMode,
      colorSchemeBuilder,
      textThemeBuilder,
      themeExtensionsBuilder,
      localizationsDelegates,
      supportedLocales,
      router,
      home,
    ];
  }

  @override
  String toString() =>
      'MyoroAppConfiguration(\n'
      '  title: $title,\n'
      '  themeMode: $themeMode,\n'
      '  colorSchemeBuilder: $colorSchemeBuilder,\n'
      '  textThemeBuilder: $textThemeBuilder,\n'
      '  themeExtensionsBuilder: $themeExtensionsBuilder,\n'
      '  localizationsDelegates: $localizationsDelegates,\n'
      '  supportedLocales: $supportedLocales,\n'
      '  router: $router,\n'
      '  home: $home,\n'
      ');';
}
