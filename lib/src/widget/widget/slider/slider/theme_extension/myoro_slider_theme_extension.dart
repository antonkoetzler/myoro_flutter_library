import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_slider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSlider].
@immutable
@myoroThemeExtension
class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension>
    with _$MyoroSliderThemeExtensionMixin {
  const MyoroSliderThemeExtension({
    required this.labelTextStyle,
    required this.sliderPadding,
    required this.indicatorTextStyle,
    required this.indicatorTextAlignment,
  });

  // coverage:ignore-start
  MyoroSliderThemeExtension.fake()
    : labelTextStyle = myoroFake<TextStyle>(),
      sliderPadding = myoroFake<EdgeInsets>(),
      indicatorTextStyle = myoroFake<TextStyle>(),
      indicatorTextAlignment = myoroFake<TextAlign>();
  // coverage:ignore-end

  MyoroSliderThemeExtension.builder(TextTheme textTheme)
    : labelTextStyle = textTheme.headlineSmall!,
      sliderPadding = EdgeInsets.zero,
      indicatorTextStyle = textTheme.bodySmall!,
      indicatorTextAlignment = TextAlign.center;

  /// Default [TextStyle] of [MyoroSlider.label].
  final TextStyle labelTextStyle;

  /// [EdgeInsets] of the [Slider].
  final EdgeInsets sliderPadding;

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  final TextStyle indicatorTextStyle;

  /// [TextAlign] of [_IndicatorText].
  final TextAlign indicatorTextAlignment;

  @override
  MyoroSliderThemeExtension lerp(covariant ThemeExtension<MyoroSliderThemeExtension>? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    return copyWith(
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      sliderPadding: EdgeInsets.lerp(sliderPadding, other.sliderPadding, t),
      indicatorTextStyle: TextStyle.lerp(indicatorTextStyle, other.indicatorTextStyle, t),
      indicatorTextAlignment: myoroLerp(indicatorTextAlignment, other.indicatorTextAlignment, t),
    );
  }
}
