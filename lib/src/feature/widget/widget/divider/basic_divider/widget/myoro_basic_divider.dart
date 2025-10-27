import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
class MyoroBasicDivider extends StatelessWidget {
  const MyoroBasicDivider(this._direction, {super.key, this.style = const MyoroBasicDividerStyle()});

  /// ThemeExtension.
  final MyoroBasicDividerStyle style;

  /// [Axis]
  final Axis _direction;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final color = style.color ?? themeExtension.color;
    final shortValue = style.shortValue ?? themeExtension.shortValue;
    final longValue = style.longValue ?? themeExtension.longValue;

    final isHorizontal = _direction.isHorizontal;

    return Container(
      color: color,
      width: isHorizontal ? longValue : shortValue,
      height: isHorizontal ? shortValue : longValue,
    );
  }
}
