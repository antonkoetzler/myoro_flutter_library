import 'package:flutter/material.dart';

/// Extension for [TextStyle].
extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}
