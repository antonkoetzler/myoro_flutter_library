import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [IconWidgetShowcaseOption].
final class IconWidgetShowcaseOptionThemeExtension extends ThemeExtension<IconWidgetShowcaseOptionThemeExtension> {
  /// Generic spacing of [Widget]s.
  final double spacing;

  const IconWidgetShowcaseOptionThemeExtension({required this.spacing});

  IconWidgetShowcaseOptionThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const IconWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  IconWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return IconWidgetShowcaseOptionThemeExtension(spacing: spacing ?? this.spacing);
  }

  @override
  IconWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<IconWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! IconWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }

  @override
  bool operator ==(Object other) {
    return other is IconWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([spacing]);
  }

  @override
  String toString() =>
      'IconWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: $spacing,\n'
      ');';
}
