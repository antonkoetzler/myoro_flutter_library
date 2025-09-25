import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/myoro_circular_loader_style.dart';

/// A simple circular loading widget.
class MyoroCircularLoader extends StatelessWidget {
  /// Style.
  final MyoroCircularLoaderStyle style;

  const MyoroCircularLoader({super.key, this.style = const MyoroCircularLoaderStyle()});

  @override
  Widget build(context) {
    final size = style.size;
    final color = style.color;

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
