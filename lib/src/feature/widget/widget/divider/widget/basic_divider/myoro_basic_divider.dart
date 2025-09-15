import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A simple divider.
class MyoroBasicDivider extends StatelessWidget {
  const MyoroBasicDivider(this._direction, {super.key, this.themeExtension});

  /// [Axis]
  final Axis _direction;

  /// ThemeExtension.
  final MyoroBasicDividerThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final appContext = context.read<MyoroAppContext>();
    final themeExtension =
        this.themeExtension ?? appContext.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final isHorizontal = _direction.isHorizontal;
    final color = themeExtension.color;
    final shortValue = themeExtension.shortValue;
    final longValue = themeExtension.longValue;
    return Container(
      color: color,
      width: isHorizontal ? longValue : shortValue,
      height: isHorizontal ? shortValue : longValue,
    );
  }
}
