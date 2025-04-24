import 'package:flutter/material.dart';

/// Darkens a color.
///
/// TODO: Needs to be tested.
Color myoroDarkenColor(Color color, double amount) {
  assert(amount >= 0 && amount <= 1, '[myoroDarkenColor]: 0 <= [amount] <= 1.');
  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
  return hslDark.toColor();
}
