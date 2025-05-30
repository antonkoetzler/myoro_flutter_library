import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple circular loading widget.
class MyoroCircularLoader extends StatelessWidget {
  /// Configuration.
  final MyoroCircularLoaderConfiguration? configuration;

  const MyoroCircularLoader({super.key, this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>();
    final chosenSize = configuration?.size ?? themeExtension.size;

    return SizedBox(
      width: chosenSize,
      height: chosenSize,
      child: CircularProgressIndicator(color: configuration?.color ?? themeExtension.color),
    );
  }
}
