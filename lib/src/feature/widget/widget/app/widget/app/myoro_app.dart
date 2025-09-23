import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/src/exports.dart';

/// Root widget of your [App] widget in main.dart.
class MyoroApp extends StatelessWidget {
  const MyoroApp({super.key, required this.configuration});

  /// Configuration.
  final MyoroAppConfiguration configuration;

  @override
  Widget build(context) {
    final debugShowCheckedModeBanner = configuration.debugShowCheckedModeBanner;

    final localizationsDelegates = [
      ...?configuration.localizationsDelegates,
      ...AppLocalizations.localizationsDelegates,
    ];
    final supportedLocales = [
      ...?configuration.supportedLocales,
      ...AppLocalizations.supportedLocales,
    ];

    final themeMode =
        configuration.themeMode ??
        (MediaQuery.of(context).platformBrightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light);

    final lightTheme = createMyoroThemeData(
      configuration.colorSchemeBuilder,
      configuration.textThemeBuilder,
      configuration.themeExtensionsBuilder,
      isDarkMode: false,
    );
    final darkTheme = createMyoroThemeData(
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
