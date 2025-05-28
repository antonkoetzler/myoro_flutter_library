import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

/// [ThemeExtension] for [MyoroGroupRadio].
@immutable
class MyoroGroupRadioThemeExtension extends ThemeExtension<MyoroGroupRadioThemeExtension> {
  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  const MyoroGroupRadioThemeExtension({required this.spacing, required this.runSpacing});

  const MyoroGroupRadioThemeExtension.builder() : spacing = 5, runSpacing = 5;

  MyoroGroupRadioThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(),
      runSpacing = faker.randomGenerator.decimal();

  @override
  MyoroGroupRadioThemeExtension copyWith({double? spacing, double? runSpacing}) {
    return MyoroGroupRadioThemeExtension(spacing: spacing ?? this.spacing, runSpacing: runSpacing ?? this.runSpacing);
  }

  @override
  MyoroGroupRadioThemeExtension lerp(covariant ThemeExtension<MyoroGroupRadioThemeExtension>? other, double t) {
    if (other is! MyoroGroupRadioThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.runSpacing == runSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(spacing, runSpacing);
  }

  @override
  String toString() =>
      'MyoroGroupRadioThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      ');';
}
