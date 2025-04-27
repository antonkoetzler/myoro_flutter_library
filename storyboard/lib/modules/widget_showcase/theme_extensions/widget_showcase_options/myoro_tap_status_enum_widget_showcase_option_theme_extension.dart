import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTapStatusEnumWidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension> {
  /// Spacing of [Widget]s.
  final double spacing;

  /// [TextStyle] of [_Label].
  final TextStyle labelTextStyle;

  const MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension({
    required this.spacing,
    required this.labelTextStyle,
  });

  MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension.builder(TextTheme textTheme)
    : spacing = 10,
      labelTextStyle = textTheme.titleSmall!;

  @override
  MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension copyWith({
    double? spacing,
    TextStyle? labelTextStyle,
  }) {
    return MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension(
      spacing: spacing ?? this.spacing,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
    );
  }

  @override
  MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.labelTextStyle == labelTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(spacing, labelTextStyle);
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      ');';
}
