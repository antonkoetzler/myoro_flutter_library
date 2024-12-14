import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroCheckboxWidgetShowcase].
final class MyoroCheckboxWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension> {
  /// Width of [_LabelTextStyleOption].
  final double labelTextStyleOptionWidth;

  const MyoroCheckboxWidgetShowcaseThemeExtension({
    required this.labelTextStyleOptionWidth,
  });

  @override
  MyoroCheckboxWidgetShowcaseThemeExtension copyWith({
    double? labelTextStyleOptionWidth,
  }) {
    return MyoroCheckboxWidgetShowcaseThemeExtension(
      labelTextStyleOptionWidth: labelTextStyleOptionWidth ?? this.labelTextStyleOptionWidth,
    );
  }

  @override
  ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCheckboxWidgetShowcaseThemeExtension) return this;
    return copyWith(
      labelTextStyleOptionWidth: lerpDouble(labelTextStyleOptionWidth, other.labelTextStyleOptionWidth, t),
    );
  }
}
