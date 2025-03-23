import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder to create a custom [ColorScheme] instead of using [createMyoroColorScheme].
typedef MyoroMaterialAppColorSchemeBuilder =
    ColorScheme Function(ColorScheme myoroColorScheme);

/// Builder to create a custom [TextTheme] instead of using [createMyoroColorScheme].
typedef MyoroMaterialAppTextThemeBuilder =
    TextTheme Function(TextTheme myoroTextTheme);

/// To be able to grab the [ColorScheme] & [TextTheme] to build your [ThemeExtension]s correctly.
typedef MyoroMaterialAppThemeExtensionsBuilder =
    List<ThemeExtension> Function(ColorScheme colorScheme, TextTheme textTheme);

/// Root widget of your [App] widget in main.dart.
final class MyoroMaterialApp extends StatelessWidget {
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

  /// [GoRouter]
  final GoRouter? router;

  /// Entry point for the application when a [GoRouter] is not being used.
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

  static Finder finder({
    String? title,
    bool titleEnabled = false,
    ThemeMode? themeMode,
    bool themeModeEnabled = false,
    MyoroMaterialAppColorSchemeBuilder? colorSchemeBuilder,
    bool colorSchemeBuilderEnabled = false,
    MyoroMaterialAppTextThemeBuilder? textThemeBuilder,
    bool textThemeBuilderEnabled = false,
    MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder,
    bool themeExtensionsBuilderEnabled = false,
    GoRouter? router,
    bool routerEnabled = false,
    MyoroScreen? home,
    bool homeEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroMaterialApp &&
          (titleEnabled ? w.title == title : true) &&
          (themeModeEnabled ? w.themeMode == themeMode : true) &&
          (colorSchemeBuilderEnabled
              ? w.colorSchemeBuilder == colorSchemeBuilder
              : true) &&
          (textThemeBuilderEnabled
              ? w.textThemeBuilder == textThemeBuilder
              : true) &&
          (themeExtensionsBuilderEnabled
              ? w.themeExtensionsBuilder == themeExtensionsBuilder
              : true) &&
          (routerEnabled ? w.router == router : true) &&
          (homeEnabled ? w.home == home : true),
    );
  }

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
    final Iterable<Locale> supportedLocalesInUse =
        supportedLocales ?? const [Locale('en', 'US')];
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
