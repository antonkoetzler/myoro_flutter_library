import 'package:flutter/material.dart';

/// Extension for the [TextAlign] class.
extension TextAlignExtension on TextAlign {
  /// For dealing with [TextAlign]s in a [ThemeExtension.lerp] function.
  static TextAlign? lerp(TextAlign? primary, TextAlign? other, double t) => t < 0.5 ? primary : other;
}
