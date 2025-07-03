// coverage:ignore-file

import 'package:flutter/material.dart';

/// Class to helper with lerp functions in [ThemeExtension]s.
///
/// Use this helper when there isn't a lerp function provided for said type.
T? myoroLerp<T>(T? primary, T? other, double t) => t < 0.5 ? primary : other;
