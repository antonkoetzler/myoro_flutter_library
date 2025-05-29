import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [TextWidgetShowcaseOption].
final class TextWidgetShowcaseOptionThemeExtension extends ThemeExtension<TextWidgetShowcaseOptionThemeExtension> {
  /// Generic spacing of [Widget]s.
  final double spacing;

  const TextWidgetShowcaseOptionThemeExtension({required this.spacing});

  TextWidgetShowcaseOptionThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const TextWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  TextWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return TextWidgetShowcaseOptionThemeExtension(spacing: spacing ?? this.spacing);
  }

  @override
  TextWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! TextWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }

  @override
  bool operator ==(Object other) {
    return other is TextWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([spacing]);
  }

  @override
  String toString() =>
      'TextWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: $spacing,\n'
      ');';
}
