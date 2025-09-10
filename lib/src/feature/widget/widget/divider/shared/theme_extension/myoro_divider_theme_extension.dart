import 'dart:ui';

import 'package:flutter/material.dart';

/// Abstract [ThemeExtension] class for dividers.
abstract class MyoroDividerThemeExtension<T extends MyoroDividerThemeExtension<T>> extends ThemeExtension<T> {
  const MyoroDividerThemeExtension({this.color, this.shortValue, this.longValue});

  /// [Color] of the [MyoroDivider].
  final Color? color;

  /// Width of the divider. [kMyoroBorderWidth] by default.
  final double? shortValue;

  /// Height of the divider. [double.infinity] by default.
  final double? longValue;

  @override
  T copyWith({
    Color? color,
    bool colorProvided = true,
    double? shortValue,
    bool shortValueProvided = true,
    double? longValue,
    bool longValueProvided = true,
  });

  @override
  T lerp(covariant T? other, double t) {
    if (other == null) return this as T;

    final color = Color.lerp(this.color, other.color, t);
    final shortValue = lerpDouble(this.shortValue, other.shortValue, t);
    final longValue = lerpDouble(this.longValue, other.longValue, t);

    return copyWith(
      color: color,
      colorProvided: color != null,
      shortValue: shortValue,
      shortValueProvided: shortValue != null,
      longValue: longValue,
      longValueProvided: longValue != null,
    );
  }
}
