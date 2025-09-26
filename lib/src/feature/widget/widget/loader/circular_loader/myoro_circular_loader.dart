import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A simple circular loading widget.
class MyoroCircularLoader extends StatelessWidget {
  /// Style.
  final MyoroCircularLoaderStyle style;

  const MyoroCircularLoader({super.key, this.style = const MyoroCircularLoaderStyle()});

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>();
    final size = style.size ?? themeExtension.size;
    final color = style.color ?? themeExtension.color;

    return Provider.value(
      value: style,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(color: color),
      ),
    );
  }
}
