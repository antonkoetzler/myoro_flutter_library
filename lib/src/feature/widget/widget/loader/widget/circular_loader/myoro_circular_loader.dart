import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple circular loading widget.
class MyoroCircularLoader extends StatelessWidget {
  /// Theme extension.
  final MyoroCircularLoaderThemeExtension? themeExtension;

  const MyoroCircularLoader({super.key, this.themeExtension});

  @override
  Widget build(context) {
    final colorScheme = context.colorScheme;
    final themeExtension = this.themeExtension ?? MyoroCircularLoaderThemeExtension.builder(colorScheme);
    final size = themeExtension.size;
    final color = themeExtension.color;

    return MyoroSingleThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(color: color),
      ),
    );
  }
}
