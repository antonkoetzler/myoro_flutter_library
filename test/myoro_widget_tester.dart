import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that must be created when creating new widget tests.
final class MyoroWidgetTester extends StatelessWidget {
  /// [ThemeMode] of the test.
  final ThemeMode themeMode;

  /// The [Widget].
  final Widget child;

  const MyoroWidgetTester({
    super.key,
    this.themeMode = ThemeMode.dark,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (child is MyoroMaterialApp) {
      return child;
    } else if (child is MyoroScreen) {
      return MyoroMaterialApp(
        themeMode: themeMode,
        home: child as MyoroScreen,
      );
    } else if (child is MyoroAppBar) {
      return MyoroMaterialApp(
        themeMode: themeMode,
        home: MyoroScreen(
          appBar: child as MyoroAppBar,
        ),
      );
    } else {
      return MyoroMaterialApp(
        themeMode: themeMode,
        home: MyoroScreen(
          body: child,
        ),
      );
    }
  }
}
