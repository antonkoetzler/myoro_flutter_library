import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that adds a [ThemeExtension] to the scope of [child].
class MyoroSingularThemeExtensionWrapper extends MyoroMultiThemeExtensionWrapper {
  MyoroSingularThemeExtensionWrapper({super.key, required ThemeExtension themeExtension, required super.child})
    : super(themeExtensions: [themeExtension]);
}
