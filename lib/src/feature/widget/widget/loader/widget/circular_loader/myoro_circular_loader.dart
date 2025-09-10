import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple circular loading widget.
class MyoroCircularLoader extends StatelessWidget {
  /// Theme extension.
  final MyoroCircularLoaderThemeExtension? themeExtension;

  const MyoroCircularLoader({super.key, this.themeExtension});

  @override
  Widget build(context) {
    final themeExtension = this.themeExtension ?? context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>();
    final size = themeExtension.size;
    final color = themeExtension.color;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(color: color),
      ),
    );
  }
}
