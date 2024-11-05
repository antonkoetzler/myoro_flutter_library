import 'package:flutter/material.dart';

/// Class to helper with lerp functions in [ThemeExtension]s.
///
/// Use this helper when there isn't a lerp function provided for said type.
final class LerpHelper {
  static T? lerp<T>(T? primary, T? other, double t) => t < 0.5 ? primary : other;
}
