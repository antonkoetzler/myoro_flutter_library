import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/src/exports.dart';

/// Root widget of your [App] widget in main.dart.
class MyoroApp extends StatelessWidget {
  /// Default [debugShowCheckedModeBanner] value.
  static const debugShowCheckedModeBannerDefaultValue = false;

  /// Default constructor.
  const MyoroApp({
    super.key,
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
  });

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

  @override
  Widget build(context) {
    final localizationsDelegates = [...?this.localizationsDelegates, ...AppLocalizations.localizationsDelegates];
    final supportedLocales = [...?this.supportedLocales, ...AppLocalizations.supportedLocales];
    final themeMode =
        this.themeMode ??
        (MediaQuery.of(context).platformBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light);
    final lightTheme = createMyoroThemeData(
      colorSchemeBuilder,
      textThemeBuilder,
      themeExtensionsBuilder,
      isDarkMode: false,
    );
    final darkTheme = createMyoroThemeData(
      colorSchemeBuilder,
      textThemeBuilder,
      themeExtensionsBuilder,
      isDarkMode: true,
    );

    return home != null
        ? MaterialApp(
            title: title,
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            localizationsDelegates: localizationsDelegates,
            supportedLocales: supportedLocales,
            themeMode: themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            home: home,
            builder: builder,
          )
        : MaterialApp.router(
            title: title,
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            localizationsDelegates: localizationsDelegates,
            supportedLocales: supportedLocales,
            themeMode: themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            routerConfig: router,
            builder: builder,
          );
  }
}
