import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
final class MyoroBasicDivider extends StatelessWidget {
  /// Direction of the divider.
  final Axis direction;

  /// Short value of the divider (i.e. width for vertical, height for horizontal).
  final double? shortValue;

  /// Padding of the divider.
  final EdgeInsets? padding;

  const MyoroBasicDivider(
    this.direction, {
    super.key,
    this.shortValue,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final isHorizontal = direction.isHorizontal;
    final setShortValue = shortValue ?? themeExtension.shortValue;

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Container(
        color: themeExtension.color,
        width: isHorizontal ? themeExtension.longValue : setShortValue,
        height: isHorizontal ? setShortValue : themeExtension.longValue,
      ),
    );
  }
}
