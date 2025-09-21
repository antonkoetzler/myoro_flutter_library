import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that adds a [ThemeExtension] to the scope of [child].
class MyoroSingleThemeExtensionWrapper extends MyoroMultiThemeExtensionWrapper {
  MyoroSingleThemeExtensionWrapper({super.key, required ThemeExtension themeExtension, required super.child})
    : super(themeExtensions: [themeExtension]);
}
