import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple circular loading widget.
class MyoroCircularLoader extends StatelessWidget {
  /// Configuration.
  final MyoroCircularLoaderConfiguration? configuration;

  /// Theme extension.
  final MyoroCircularLoaderThemeExtension? themeExtension;

  const MyoroCircularLoader({super.key, this.configuration, this.themeExtension});

  @override
  Widget build(context) {
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>();
    final chosenSize = configuration?.size ?? resolvedThemeExtension.size;

    final child = SizedBox(
      width: chosenSize,
      height: chosenSize,
      child: CircularProgressIndicator(color: configuration?.color ?? resolvedThemeExtension.color),
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: child);
  }
}
