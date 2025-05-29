import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension> {
  /// General spacing of [Widget]s.
  final double spacing;

  const PaddingWidgetShowcaseOptionThemeExtension({required this.spacing});

  PaddingWidgetShowcaseOptionThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const PaddingWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  PaddingWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return PaddingWidgetShowcaseOptionThemeExtension(spacing: spacing ?? this.spacing);
  }

  @override
  PaddingWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! PaddingWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }

  @override
  bool operator ==(Object other) {
    return other is PaddingWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([spacing]);
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: $spacing,\n'
      ');';
}
