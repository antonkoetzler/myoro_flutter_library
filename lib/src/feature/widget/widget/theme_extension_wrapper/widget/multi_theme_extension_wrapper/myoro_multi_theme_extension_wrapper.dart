import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that adds multiple [ThemeExtension]s to the scope of [child].
class MyoroMultiThemeExtensionWrapper extends StatelessWidget {
  const MyoroMultiThemeExtensionWrapper({super.key, required this.themeExtensions, required this.child});

  /// [ThemeExtension]s to add.
  final List<ThemeExtension<dynamic>> themeExtensions;

  /// [Widget] whose scope will have [themeExtensions].
  final Widget child;

  @override
  Widget build(context) {
    final themeData = context.themeData;
    final themeDataThemeExtensions = themeData.extensions;

    return Theme(
      data: themeData.copyWith(extensions: [...themeDataThemeExtensions.values, ...themeExtensions]),
      child: child,
    );
  }
}
