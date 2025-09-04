import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
class MyoroBasicDivider extends StatelessWidget {
  const MyoroBasicDivider(this._direction, {super.key, this.style = const MyoroBasicDividerStyle()});

  /// [Axis]
  final Axis _direction;

  /// Style.
  final MyoroBasicDividerStyle style;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    final isHorizontal = _direction.isHorizontal;

    final color = style.color ?? themeExtension.color;
    final shortValue = style.shortValue ?? themeExtension.shortValue;
    final longValue = style.longValue ?? themeExtension.longValue;

    return Container(
      color: color,
      width: isHorizontal ? longValue : shortValue,
      height: isHorizontal ? shortValue : longValue,
    );
  }
}
