import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to inject a [ThemeExtension] into this [BuildContext]'s [ThemeData].
class MyoroThemeExtensionInjector extends MyoroMultiThemeExtensionInjector {
  MyoroThemeExtensionInjector({super.key, required super.child, required ThemeExtension themeExtension})
    : super(themeExtensions: [themeExtension]);
}
