import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
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

  /// Entry point for the application.
  final Widget home;

  const MyoroMaterialApp({
    super.key,
    this.title,
    this.themeMode,
    this.colorSchemeBuilder,
    this.textThemeBuilder,
    this.themeExtensionsBuilder,
    this.localizationsDelegates,
    this.supportedLocales,
    required this.home,
  });

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
          (homeEnabled ? w.home == home : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // Used with [Widget]s like [MyoroDropdown] which close the dropdown when anywhere else is clicked.
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MaterialApp(
        // To not show the "Debug" banner at the top right of the screen.
        debugShowCheckedModeBanner: false,
        title: title,
        localizationsDelegates:
            localizationsDelegates ??
            [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
        supportedLocales:
            supportedLocales ?? const <Locale>[Locale('en', 'US')],
        themeMode: themeMode ?? ThemeMode.dark,
        theme: createMyoroThemeData(
          colorSchemeBuilder,
          textThemeBuilder,
          themeExtensionsBuilder,
          isDarkMode: false,
        ),
        darkTheme: createMyoroThemeData(
          colorSchemeBuilder,
          textThemeBuilder,
          themeExtensionsBuilder,
          isDarkMode: true,
        ),
        home: home,
      ),
    );
  }
}
