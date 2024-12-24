import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension> {
  /// Default spacing of content.
  final double spacing;

  /// Default [TextStyle] of [MyoroSlider.label].
  final TextStyle labelTextStyle;

  /// [EdgeInsets] of the [Slider].
  final EdgeInsets sliderPadding;

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  final TextStyle indicatorTextStyle;

  const MyoroSliderThemeExtension({
    required this.spacing,
    required this.labelTextStyle,
    required this.sliderPadding,
    required this.indicatorTextStyle,
  });

  @override
  MyoroSliderThemeExtension copyWith({
    double? spacing,
    TextStyle? labelTextStyle,
    EdgeInsets? sliderPadding,
    TextStyle? indicatorTextStyle,
  }) {
    return MyoroSliderThemeExtension(
      spacing: spacing ?? this.spacing,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      sliderPadding: sliderPadding ?? this.sliderPadding,
      indicatorTextStyle: indicatorTextStyle ?? this.indicatorTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroSliderThemeExtension> lerp(covariant ThemeExtension<MyoroSliderThemeExtension>? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      sliderPadding: EdgeInsets.lerp(sliderPadding, other.sliderPadding, t),
      indicatorTextStyle: TextStyle.lerp(indicatorTextStyle, other.indicatorTextStyle, t),
    );
  }
}
