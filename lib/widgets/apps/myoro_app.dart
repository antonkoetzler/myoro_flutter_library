import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '../../theme_extensions/apps/myoro_app_theme_extension.dart';

/// Root widget of your [App] widget in main.dart.
class MyoroApp extends StatelessWidget {
  final MyoroAppConfiguration configuration;

  const MyoroApp({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    const bool debugShowCheckedModeBanner = false;
    final Iterable<LocalizationsDelegate> localizationsDelegatesInUse =
        configuration.localizationsDelegates ??
        [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ];
    final Iterable<Locale> supportedLocalesInUse =
        configuration.supportedLocales ?? const [Locale('en', 'US')];
    final ThemeMode themeModeInUse = configuration.themeMode ?? ThemeMode.dark;
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
        localizationsDelegates: localizationsDelegatesInUse,
        supportedLocales: supportedLocalesInUse,
        themeMode: themeModeInUse,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: configuration.home,
      );
    }

    return MaterialApp.router(
      title: configuration.title,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      localizationsDelegates: localizationsDelegatesInUse,
      supportedLocales: supportedLocalesInUse,
      themeMode: themeModeInUse,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: configuration.router,
    );
  }
}
