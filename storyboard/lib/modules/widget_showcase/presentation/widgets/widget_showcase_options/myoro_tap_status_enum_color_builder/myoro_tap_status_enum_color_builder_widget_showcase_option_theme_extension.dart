import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTapStatusEnumColorBuilderWidgetShowcaseOption].
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension> {
  /// General spacing of [Widget]s.
  final double spacing;

  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension({required this.spacing});

  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20);

  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension(spacing: spacing ?? this.spacing);
  }

  @override
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([spacing]);
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: $spacing,\n'
      ');';
}
