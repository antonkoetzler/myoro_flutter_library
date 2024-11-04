import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
final class MyoroBasicDivider extends StatelessWidget {
  /// Direction of the divider.
  final Axis direction;

  const MyoroBasicDivider(this.direction, {super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final isHorizontal = direction.isHorizontal;

    return Container(
      color: themeExtension.color,
      width: isHorizontal ? themeExtension.longValue : themeExtension.shortValue,
      height: isHorizontal ? themeExtension.shortValue : themeExtension.longValue,
    );
  }
}
