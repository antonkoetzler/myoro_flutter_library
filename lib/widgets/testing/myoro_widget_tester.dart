import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that must be created when creating new widget tests.
class MyoroWidgetTester extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    if (child is MyoroMaterialApp) {
      return child;
    } else if (child is MyoroScreen) {
      return MyoroMaterialApp(
        configuration: MyoroMaterialAppConfiguration(
          themeMode: themeMode,
          themeExtensionsBuilder: themeExtensionsBuilder,
          home: child as MyoroScreen,
        ),
      );
    } else if (child is MyoroAppBar) {
      return MyoroMaterialApp(
        configuration: MyoroMaterialAppConfiguration(
          themeMode: themeMode,
          themeExtensionsBuilder: themeExtensionsBuilder,
          home: MyoroScreen(MyoroScreenConfiguration(appBar: child as MyoroAppBar)),
        ),
      );
    } else {
      return MyoroMaterialApp(
        configuration: MyoroMaterialAppConfiguration(
          themeMode: themeMode,
          themeExtensionsBuilder: themeExtensionsBuilder,
          home: MyoroScreen(MyoroScreenConfiguration(body: child)),
        ),
      );
    }
  }
}
