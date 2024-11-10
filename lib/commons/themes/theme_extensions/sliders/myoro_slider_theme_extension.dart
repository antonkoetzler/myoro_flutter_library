import 'dart:ui';

import 'package:flutter/material.dart';

final class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension> {
  /// Default [TextStyle] of [MyoroSlider.label].
  final TextStyle labelTextStyle;

  /// [EdgeInsets] of the [Slider].
  final EdgeInsets sliderPadding;

  /// Spacing between [MyoroSlider.label] & the [Slider].
  final double labelSliderSpacing;

  const MyoroSliderThemeExtension({
    required this.labelTextStyle,
    required this.sliderPadding,
    required this.labelSliderSpacing,
  });

  @override
  MyoroSliderThemeExtension copyWith({
    TextStyle? labelTextStyle,
    EdgeInsets? sliderPadding,
    double? labelSliderSpacing,
  }) {
    return MyoroSliderThemeExtension(
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      sliderPadding: sliderPadding ?? this.sliderPadding,
      labelSliderSpacing: labelSliderSpacing ?? this.labelSliderSpacing,
    );
  }

  @override
  ThemeExtension<MyoroSliderThemeExtension> lerp(covariant ThemeExtension<MyoroSliderThemeExtension>? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    return copyWith(
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      sliderPadding: EdgeInsets.lerp(sliderPadding, other.sliderPadding, t),
      labelSliderSpacing: lerpDouble(labelSliderSpacing, other.labelSliderSpacing, t),
    );
  }
}
