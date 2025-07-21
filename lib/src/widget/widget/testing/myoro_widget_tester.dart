import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that must be created when creating new widget tests.
class MyoroWidgetTester extends StatelessWidget {
  /// [ThemeMode] of the test.
  final ThemeMode themeMode;

  /// [ThemeExtension]s you'd like to include.
  final MyoroAppThemeExtensionsBuilder? themeExtensionsBuilder;

  /// The [Widget].
  final Widget child;

  const MyoroWidgetTester({
    super.key,
    this.themeMode = ThemeMode.dark,
    this.themeExtensionsBuilder,
    required this.child,
  });

  @override
  Widget build(context) {
    if (child is MyoroApp) {
      return child;
    } else if (child is MyoroScreen) {
      return MyoroApp(
        configuration: MyoroAppConfiguration(
          themeMode: themeMode,
          themeExtensionsBuilder: themeExtensionsBuilder,
          home: child as MyoroScreen,
        ),
      );
    } else if (child is MyoroAppBar) {
      return MyoroApp(
        configuration: MyoroAppConfiguration(
          themeMode: themeMode,
          themeExtensionsBuilder: themeExtensionsBuilder,
          home: MyoroScreen(
            configuration: MyoroScreenConfiguration(appBar: child as MyoroAppBar, body: const SizedBox.shrink()),
          ),
        ),
      );
    } else {
      return MyoroApp(
        configuration: MyoroAppConfiguration(
          themeMode: themeMode,
          themeExtensionsBuilder: themeExtensionsBuilder,
          home: MyoroScreen(configuration: MyoroScreenConfiguration(body: child)),
        ),
      );
    }
  }
}
