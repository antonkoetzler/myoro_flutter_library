import 'dart:ui';

import 'package:flutter/material.dart';

final class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension> {
  /// Default [TextStyle] of [MyoroSlider.label].
  final TextStyle labelTextStyle;

  /// [EdgeInsets] of the [Slider].
  final EdgeInsets sliderPadding;

  /// Spacing between [MyoroSlider.label] & the [Slider].
  final double labelSliderSpacing;

  /// Text style of the footer label.
  final TextStyle footerLabelTextStyle;

  const MyoroSliderThemeExtension({
    required this.labelTextStyle,
    required this.sliderPadding,
    required this.labelSliderSpacing,
    required this.footerLabelTextStyle,
  });

  @override
  MyoroSliderThemeExtension copyWith({
    TextStyle? labelTextStyle,
    EdgeInsets? sliderPadding,
    double? labelSliderSpacing,
    TextStyle? footerLabelTextStyle,
  }) {
    return MyoroSliderThemeExtension(
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      sliderPadding: sliderPadding ?? this.sliderPadding,
      labelSliderSpacing: labelSliderSpacing ?? this.labelSliderSpacing,
      footerLabelTextStyle: footerLabelTextStyle ?? this.footerLabelTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroSliderThemeExtension> lerp(covariant ThemeExtension<MyoroSliderThemeExtension>? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    return copyWith(
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      sliderPadding: EdgeInsets.lerp(sliderPadding, other.sliderPadding, t),
      labelSliderSpacing: lerpDouble(labelSliderSpacing, other.labelSliderSpacing, t),
      footerLabelTextStyle: TextStyle.lerp(footerLabelTextStyle, other.footerLabelTextStyle, t),
    );
  }
}
