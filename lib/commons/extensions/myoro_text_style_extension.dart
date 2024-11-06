import 'package:flutter/material.dart';

/// Extension for [TextStyle].
extension MyoroTextStyleExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}
