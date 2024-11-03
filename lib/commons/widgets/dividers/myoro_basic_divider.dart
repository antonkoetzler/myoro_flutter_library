import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
final class MyoroBasicDivider extends StatelessWidget {
  /// Direction of the divider.
  final Axis direction;

  const MyoroBasicDivider(this.direction, {super.key});

  @override
  Widget build(BuildContext context) {
    final isHorizontal = direction.isHorizontal;
    const width = 2.0;

    return Container(
      color: ColorDesignSystem.secondary(context),
      width: isHorizontal ? double.infinity : width,
      height: isHorizontal ? width : double.infinity,
    );
  }
}
