import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to inject a [ThemeExtension] into this [BuildContext]'s [ThemeData].
class MyoroSingularThemeExtensionInjector extends MyoroMultiThemeExtensionInjector {
  MyoroSingularThemeExtensionInjector({super.key, required super.child, required ThemeExtension themeExtension})
    : super(themeExtensions: [themeExtension]);
}
