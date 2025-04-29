import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder to create a custom [ColorScheme] instead of using [createMyoroColorScheme].
typedef MyoroMaterialAppColorSchemeBuilder = ColorScheme Function(ColorScheme myoroColorScheme);

/// Builder to create a custom [TextTheme] instead of using [createMyoroColorScheme].
typedef MyoroMaterialAppTextThemeBuilder = TextTheme Function(TextTheme myoroTextTheme);

/// To be able to grab the [ColorScheme] & [TextTheme] to build your [ThemeExtension]s correctly.
typedef MyoroMaterialAppThemeExtensionsBuilder =
    List<ThemeExtension> Function(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme);

/// Root widget of your [App] widget in main.dart.
class MyoroMaterialApp extends StatelessWidget {
  /// Title of the application.
  ///
  /// However, a plugin like [window_manager] needs to be used
  /// to for example, set the title of the window on desktop.
  final String? title;

  /// Default theme (dark or light mode) of the application.
  final ThemeMode? themeMode;

  /// Builder to create a custom [ColorScheme] instead of using [createMyoroColorScheme].
  final MyoroMaterialAppColorSchemeBuilder? colorSchemeBuilder;

  /// Builder to create a custom [TextTheme] instead of using [createMyoroColorScheme].
  final MyoroMaterialAppTextThemeBuilder? textThemeBuilder;

  /// [ThemeExtension]s for the widgets in your application.
  ///
  /// Will not override the Myoro [ThemeExtension]s.
  final MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder;

  /// Localization delegate setup.
  final Iterable<LocalizationsDelegate>? localizationsDelegates;

  /// Supported setups in localization setup.
  final Iterable<Locale>? supportedLocales;

  /// Router to support packages such as go_router.
  final RouterConfig<Object>? router;

  /// Entry point for the application when a [MyoroMaterialApp.router] is not being used.
  final Widget? home;

  const MyoroMaterialApp({
    super.key,
    this.title,
    this.themeMode,
    this.colorSchemeBuilder,
    this.textThemeBuilder,
    this.themeExtensionsBuilder,
    this.localizationsDelegates,
    this.supportedLocales,
    this.router,
    this.home,
  }) : assert(
         (router != null) ^ (home != null),
         '[MyoroMaterialApp]: [router] (x)or [home] must be provided.',
       );

  @override
  Widget build(BuildContext context) {
    const bool debugShowCheckedModeBanner = false;
    final Iterable<LocalizationsDelegate> localizationsDelegatesInUse =
        localizationsDelegates ??
        [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ];
    final Iterable<Locale> supportedLocalesInUse = supportedLocales ?? const [Locale('en', 'US')];
    final ThemeMode themeModeInUse = themeMode ?? ThemeMode.dark;
    final ThemeData lightTheme = createMyoroThemeData(
      colorSchemeBuilder,
      textThemeBuilder,
      themeExtensionsBuilder,
      isDarkMode: false,
    );
    final ThemeData darkTheme = createMyoroThemeData(
      colorSchemeBuilder,
      textThemeBuilder,
      themeExtensionsBuilder,
      isDarkMode: true,
    );

    if (home != null) {
      return MaterialApp(
        title: title,
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
        localizationsDelegates: localizationsDelegatesInUse,
        supportedLocales: supportedLocalesInUse,
        themeMode: themeModeInUse,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: home,
      );
    }

    return MaterialApp.router(
      title: title,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      localizationsDelegates: localizationsDelegatesInUse,
      supportedLocales: supportedLocalesInUse,
      themeMode: themeModeInUse,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,
    );
  }
}
