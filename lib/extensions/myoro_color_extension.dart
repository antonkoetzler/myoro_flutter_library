import 'package:flutter/material.dart';

/// Extension on [Color].
extension MyoroColorExtension on Color {
  /// Gets the hexadecimal format of the [Color].
  String get hexadecimalFormat {
    return '#'
            '${(r * 255).toInt().toRadixString(16).padLeft(2, '0')}'
            '${(g * 255).toInt().toRadixString(16).padLeft(2, '0')}'
            '${(b * 255).toInt().toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }

  /// Darkerns a color.
  ///
  /// TODO: Needs to be tested.
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  /// Brightens a color.
  ///
  /// TODO: Needs to be tested.
  Color brighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }
}
