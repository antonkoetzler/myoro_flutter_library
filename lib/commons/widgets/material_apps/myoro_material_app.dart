import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// To be able to grab the [ColorScheme] & [TextTheme] to build your [ThemeExtension]s correctly.
typedef MyoroMaterialAppThemeExtensionsBuilder = List<ThemeExtension> Function(ColorScheme colorScheme, TextTheme textTheme);

/// Root widget of your [App] widget in main.dart.
final class MyoroMaterialApp extends StatelessWidget {
  /// Title of the application.
  ///
  /// However, a plugin like [window_manager] needs to be used
  /// to for example, set the title of the window on desktop.
  final String title;

  /// Default theme (dark or light mode) of the application.
  final ThemeMode? themeMode;

  /// [ThemeExtension]s for the widgets in your application.
  ///
  /// Will not override the Myoro [ThemeExtension]s.
  final MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder;

  /// If [true], this will not include the [ThemeExtension]s of the Myoro library.
  ///
  /// This is usually the case where you'd like to add custom styling with [ThemeExtension.copyWith] with Myoro [ThemeExtension].
  final bool includeMyoroThemeExtensions;

  /// Entry point for the application.
  final Scaffold home;

  const MyoroMaterialApp({
    super.key,
    required this.title,
    this.themeMode,
    this.themeExtensionsBuilder,
    this.includeMyoroThemeExtensions = true,
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: home,
      themeMode: themeMode ?? ThemeMode.dark,
      theme: createMyoroThemeData(themeExtensionsBuilder, includeMyoroThemeExtensions, isDarkMode: false),
      darkTheme: createMyoroThemeData(themeExtensionsBuilder, includeMyoroThemeExtensions, isDarkMode: true),
    );
  }
}
