import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

/// [ThemeExtension] of [MyoroDropdown].
class MyoroDropdownThemeExtension
    extends ThemeExtension<MyoroDropdownThemeExtension> {
  /// Standard spacing between items.
  final double spacing;

  const MyoroDropdownThemeExtension({required this.spacing});

  const MyoroDropdownThemeExtension.builder() : spacing = 10;

  MyoroDropdownThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 50);

  @override
  MyoroDropdownThemeExtension copyWith({double? spacing}) {
    return MyoroDropdownThemeExtension(spacing: spacing ?? this.spacing);
  }

  @override
  MyoroDropdownThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([spacing]);
  }

  @override
  String toString() =>
      'MyoroDropdownThemeExtension(\n'
      '  spacing: $spacing,\n'
      ');';
}
