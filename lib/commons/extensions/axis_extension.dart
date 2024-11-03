import 'package:flutter/material.dart';

/// Extension for the [Axis] class.
extension DirectionExtension on Axis {
  bool get isHorizontal => this == Axis.horizontal;
  bool get isVertical => this == Axis.vertical;
}
