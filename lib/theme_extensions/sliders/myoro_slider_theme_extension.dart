import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroSlider].
class MyoroSliderThemeExtension
    extends ThemeExtension<MyoroSliderThemeExtension> {
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

  MyoroSliderThemeExtension.fake()
    : labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      sliderPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      indicatorTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      indicatorTextAlignment =
          TextAlign.values[faker.randomGenerator.integer(
            TextAlign.values.length,
          )];

  MyoroSliderThemeExtension.builder(TextTheme textTheme)
    : labelTextStyle = textTheme.headlineSmall!,
      sliderPadding = EdgeInsets.zero,
      indicatorTextStyle = textTheme.bodySmall!,
      indicatorTextAlignment = TextAlign.center;

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
      indicatorTextAlignment:
          indicatorTextAlignment ?? this.indicatorTextAlignment,
    );
  }

  @override
  MyoroSliderThemeExtension lerp(
    covariant ThemeExtension<MyoroSliderThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSliderThemeExtension) return this;
    return copyWith(
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      sliderPadding: EdgeInsets.lerp(sliderPadding, other.sliderPadding, t),
      indicatorTextStyle: TextStyle.lerp(
        indicatorTextStyle,
        other.indicatorTextStyle,
        t,
      ),
      indicatorTextAlignment: myoroLerp(
        indicatorTextAlignment,
        other.indicatorTextAlignment,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderThemeExtension &&
        other.runtimeType == runtimeType &&
        other.labelTextStyle == labelTextStyle &&
        other.sliderPadding == sliderPadding &&
        other.indicatorTextStyle == indicatorTextStyle &&
        other.indicatorTextAlignment == indicatorTextAlignment;
  }

  @override
  int get hashCode {
    return Object.hash(
      labelTextStyle,
      sliderPadding,
      indicatorTextStyle,
      indicatorTextAlignment,
    );
  }

  @override
  String toString() =>
      'MyoroSliderThemeExtension(\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  sliderPadding: $sliderPadding,\n'
      '  indicatorTextStyle: $indicatorTextStyle,\n'
      '  indicatorTextAlignment: $indicatorTextAlignment,\n'
      ');';
}
