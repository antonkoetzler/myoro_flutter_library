import 'dart:ui';

import 'package:flutter/material.dart';

/// Abstract [ThemeExtension] class for dividers.
abstract class MyoroDividerThemeExtension<T extends MyoroDividerThemeExtension<T>>
    extends ThemeExtension<T> {
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
}
