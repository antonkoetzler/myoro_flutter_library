import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroCheckboxWidgetShowcase].
final class MyoroCheckboxWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension> {
  /// Width of [_LabelTextStyleOption].
  final double labelTextStyleOptionWidth;

  const MyoroCheckboxWidgetShowcaseThemeExtension({required this.labelTextStyleOptionWidth});

  MyoroCheckboxWidgetShowcaseThemeExtension.fake() : labelTextStyleOptionWidth = faker.randomGenerator.decimal();

  const MyoroCheckboxWidgetShowcaseThemeExtension.builder() : labelTextStyleOptionWidth = 198;

  @override
  MyoroCheckboxWidgetShowcaseThemeExtension copyWith({double? labelTextStyleOptionWidth}) {
    return MyoroCheckboxWidgetShowcaseThemeExtension(labelTextStyleOptionWidth: labelTextStyleOptionWidth ?? this.labelTextStyleOptionWidth);
  }

  @override
  MyoroCheckboxWidgetShowcaseThemeExtension lerp(covariant ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>? other, double t) {
    if (other is! MyoroCheckboxWidgetShowcaseThemeExtension) return this;
    return copyWith(labelTextStyleOptionWidth: lerpDouble(labelTextStyleOptionWidth, other.labelTextStyleOptionWidth, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.labelTextStyleOptionWidth == labelTextStyleOptionWidth;
  }

  @override
  int get hashCode {
    return Object.hashAll([labelTextStyleOptionWidth]);
  }

  @override
  String toString() =>
      'MyoroCheckboxWidgetShowcaseThemeExtension(\n'
      '  labelTextStyleOptionWidth: $labelTextStyleOptionWidth,\n'
      ');';
}
