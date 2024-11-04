import 'package:flutter/material.dart';

/// Extension for the [Axis] class.
extension AxisExtension on Axis {
  bool get isHorizontal => this == Axis.horizontal;
  bool get isVertical => this == Axis.vertical;

  /// For dealing with [Axis]s in a [ThemeExtension.lerp] function.
  static Axis? lerp(Axis? primary, Axis? other, double t) => t < 0.5 ? primary : other;
}
