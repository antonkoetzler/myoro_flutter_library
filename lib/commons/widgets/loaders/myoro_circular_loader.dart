import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple circular loading widget.
final class MyoroCircularLoader extends StatelessWidget {
  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Size of the [MyoroCircularLoader].
  final double? size;

  const MyoroCircularLoader({
    super.key,
    this.color,
    this.size,
  });

  static Finder finder({
    Color? color,
    bool colorEnabled = false,
    double? size,
    bool sizeEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroCircularLoader &&
          (colorEnabled ? w.color == color : true) &&
          (sizeEnabled ? w.size == size : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>();
    final chosenSize = size ?? themeExtension.size;

    return SizedBox(
      width: chosenSize,
      height: chosenSize,
      child: CircularProgressIndicator(
        color: color ?? themeExtension.color,
      ),
    );
  }
}
