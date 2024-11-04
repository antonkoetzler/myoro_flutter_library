import 'package:flutter/material.dart';

/// Extension for the [bool] type.
extension BoolExtension on bool {
  /// For dealing with [bool]s in a [ThemeExtension.lerp] function.
  static bool? lerp(bool? primary, bool? other, double t) => t < 0.5 ? primary : other;
}
