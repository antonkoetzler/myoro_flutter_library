import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/src/exports.dart';

/// Root widget of your [App] widget in main.dart.
class MyoroApp extends MyoroThemeExtensionInjectedStatelessWidget<MyoroAppThemeExtension> {
  final MyoroAppConfiguration configuration;

  const MyoroApp({super.key, required this.configuration});

  @override
  Widget build(context) {
    const bool debugShowCheckedModeBanner = false;
    final Iterable<LocalizationsDelegate> localizationsDelegates = [
      ...?configuration.localizationsDelegates,
      ...AppLocalizations.localizationsDelegates,
    ];
    final Iterable<Locale> supportedLocales = [
      ...?configuration.supportedLocales,
      ...AppLocalizations.supportedLocales,
    ];
    final ThemeMode themeMode =
        configuration.themeMode ??
        (MediaQuery.of(context).platformBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light);
    final ThemeData lightTheme = createMyoroThemeData(
      configuration.colorSchemeBuilder,
      configuration.textThemeBuilder,
      configuration.themeExtensionsBuilder,
      isDarkMode: false,
    );
    final ThemeData darkTheme = createMyoroThemeData(
      configuration.colorSchemeBuilder,
      configuration.textThemeBuilder,
      configuration.themeExtensionsBuilder,
      isDarkMode: true,
    );

    if (configuration.home != null) {
      return MaterialApp(
        title: configuration.title,
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
        localizationsDelegates: localizationsDelegates,
        supportedLocales: supportedLocales,
        themeMode: themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: configuration.home,
        builder: configuration.builder,
      );
    }

    return MaterialApp.router(
      title: configuration.title,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: configuration.router,
      builder: configuration.builder,
    );
  }
}
