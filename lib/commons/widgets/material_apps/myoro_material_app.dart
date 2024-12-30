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
  final String? title;

  /// Default theme (dark or light mode) of the application.
  final ThemeMode? themeMode;

  /// [ThemeExtension]s for the widgets in your application.
  ///
  /// Will not override the Myoro [ThemeExtension]s.
  final MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder;

  /// Entry point for the application.
  final MyoroScreen home;

  const MyoroMaterialApp({
    super.key,
    this.title,
    this.themeMode,
    this.themeExtensionsBuilder,
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // Used with [Widget]s like [MyoroDropdown] which close the dropdown when anywhere else is clicked.
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // To not show the "Debug" banner at the top right of the screen.
        title: title,
        home: Builder(
          builder: (context) {
            MyoroTypographyTheme.textTheme = context.textTheme;
            return home;
          },
        ),
        themeMode: themeMode ?? ThemeMode.dark,
        theme: createMyoroThemeData(themeExtensionsBuilder, isDarkMode: false),
        darkTheme: createMyoroThemeData(themeExtensionsBuilder, isDarkMode: true),
      ),
    );
  }
}
