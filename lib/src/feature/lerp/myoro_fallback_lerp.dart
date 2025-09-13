import 'package:flutter/material.dart';

/// Class to helper with lerp functions in [ThemeExtension]s.
///
/// Use this helper when there isn't a lerp function provided for said type.
/// Fallback lerp function for types without a built-in lerp implementation.
///
/// Returns [a] if [t] < 0.5, otherwise [b].
T? myoroFallbackLerp<T>(T? a, T? b, double t) => t < 0.5 ? a : b;
