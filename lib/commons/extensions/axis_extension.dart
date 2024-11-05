import 'package:flutter/material.dart';

/// Extension for the [Axis] class.
extension AxisExtension on Axis {
  bool get isHorizontal => this == Axis.horizontal;
  bool get isVertical => this == Axis.vertical;
}
