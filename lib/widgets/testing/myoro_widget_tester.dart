import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that must be created when creating new widget tests.
final class MyoroWidgetTester extends StatelessWidget {
  /// [ThemeMode] of the test.
  final ThemeMode themeMode;

  /// [ThemeExtension]s you'd like to include.
  final MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder;

  /// The [Widget].
  final Widget child;

  const MyoroWidgetTester({
    super.key,
    this.themeMode = ThemeMode.dark,
    this.themeExtensionsBuilder,
    required this.child,
  });

  static Finder finder({
    ThemeMode? themeMode,
    bool themeModeEnabled = false,
    MyoroMaterialAppThemeExtensionsBuilder? themeExtensionsBuilder,
    bool themeExtensionsBuilderEnabled = false,
    Widget? child,
    bool childEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroWidgetTester &&
          (themeModeEnabled ? w.themeMode == themeMode : true) &&
          (themeExtensionsBuilderEnabled
              ? w.themeExtensionsBuilder == themeExtensionsBuilder
              : true) &&
          (childEnabled ? w.child == child : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (child is MyoroMaterialApp) {
      return child;
    } else if (child is MyoroScreen) {
      return MyoroMaterialApp(
        themeMode: themeMode,
        themeExtensionsBuilder: themeExtensionsBuilder,
        home: child as MyoroScreen,
      );
    } else if (child is MyoroAppBar) {
      return MyoroMaterialApp(
        themeMode: themeMode,
        themeExtensionsBuilder: themeExtensionsBuilder,
        home: MyoroScreen(appBar: child as MyoroAppBar),
      );
    } else {
      return MyoroMaterialApp(
        themeMode: themeMode,
        themeExtensionsBuilder: themeExtensionsBuilder,
        home: MyoroScreen(body: child),
      );
    }
  }
}
