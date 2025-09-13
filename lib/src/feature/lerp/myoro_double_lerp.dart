import 'dart:ui';

/// Safely lerps between two doubles, replacing infinity with maxFinite.
double? myoroDoubleLerp(double? a, double? b, double t) {
  // Replace infinite values with double.maxFinite (preserving sign)
  final finiteA = (a?.isFinite ?? true) ? a : (a!.isNegative ? -double.maxFinite : double.maxFinite);
  final finiteB = (b?.isFinite ?? true) ? b : (b!.isNegative ? -double.maxFinite : double.maxFinite);

  return lerpDouble(finiteA, finiteB, t);
}
