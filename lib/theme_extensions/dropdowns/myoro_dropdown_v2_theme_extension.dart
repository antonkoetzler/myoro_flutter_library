import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

/// [ThemeExtension] of [MyoroDropdownV2].
final class MyoroDropdownV2ThemeExtension
    extends ThemeExtension<MyoroDropdownV2ThemeExtension> {
  /// Standard spacing between items.
  final double spacing;

  const MyoroDropdownV2ThemeExtension({required this.spacing});

  const MyoroDropdownV2ThemeExtension.builder() : spacing = 10;

  MyoroDropdownV2ThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 50);

  @override
  MyoroDropdownV2ThemeExtension copyWith({double? spacing}) {
    return MyoroDropdownV2ThemeExtension(spacing: spacing ?? this.spacing);
  }

  @override
  MyoroDropdownV2ThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownV2ThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownV2ThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownV2ThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([spacing]);
  }

  @override
  String toString() =>
      'MyoroDropdownV2ThemeExtension(\n'
      '  spacing: $spacing,\n'
      ');';
}
