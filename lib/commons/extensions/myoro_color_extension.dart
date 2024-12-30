import 'package:flutter/material.dart';

/// Extension on [Color].
extension MyoroColorExtension on Color {
  /// Gets the hexadecimal format of the [Color].
  String get hexadecimalFormat {
    return '#'
            '${(a * 255).toInt().toRadixString(16).padLeft(2, '0')}'
            '${(r * 255).toInt().toRadixString(16).padLeft(2, '0')}'
            '${(g * 255).toInt().toRadixString(16).padLeft(2, '0')}'
            '${(b * 255).toInt().toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }
}
