import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension> {
  /// Default [TextStyle] of [MyoroSlider.label].
  final TextStyle labelTextStyle;

  /// [EdgeInsets] of the [Slider].
  final EdgeInsets sliderPadding;

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  final TextStyle indicatorTextStyle;

  /// [TextAlign] of [_IndicatorText].
  final TextAlign indicatorTextAlignment;

  const MyoroSliderThemeExtension({
    required this.labelTextStyle,
    required this.sliderPadding,
    required this.indicatorTextStyle,
    required this.indicatorTextAlignment,
  });

  @override
  MyoroSliderThemeExtension copyWith({
    TextStyle? labelTextStyle,
    EdgeInsets? sliderPadding,
    TextStyle? indicatorTextStyle,
    TextAlign? indicatorTextAlignment,
  }) {
    return MyoroSliderThemeExtension(
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      sliderPadding: sliderPadding ?? this.sliderPadding,
      indicatorTextStyle: indicatorTextStyle ?? this.indicatorTextStyle,
      indicatorTextAlignment: indicatorTextAlignment ?? this.indicatorTextAlignment,
    );
  }

  @override
  ThemeExtension<MyoroSliderThemeExtension> lerp(covariant ThemeExtension<MyoroSliderThemeExtension>? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    return copyWith(
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      sliderPadding: EdgeInsets.lerp(sliderPadding, other.sliderPadding, t),
      indicatorTextStyle: TextStyle.lerp(indicatorTextStyle, other.indicatorTextStyle, t),
      indicatorTextAlignment: myoroLerp(indicatorTextAlignment, other.indicatorTextAlignment, t),
    );
  }
}
