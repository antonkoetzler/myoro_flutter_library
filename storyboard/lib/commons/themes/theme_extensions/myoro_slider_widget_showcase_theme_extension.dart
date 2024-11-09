import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSliderWidgetShowcase].
final class MyoroSliderWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> {
  /// [TextStyle] of the [Text] in [_Widget] that displays the value of the [MyoroSlider].
  final TextStyle widgetSliderValueTextStyle;

  /// Spacing of the [MyoroSlider] and [Text] that displays the value of the slider in [_Widget].
  final double widgetSliderLabelSpacing;

  const MyoroSliderWidgetShowcaseThemeExtension({
    required this.widgetSliderValueTextStyle,
    required this.widgetSliderLabelSpacing,
  });

  @override
  MyoroSliderWidgetShowcaseThemeExtension copyWith({
    TextStyle? widgetSliderValueTextStyle,
    double? widgetSliderLabelSpacing,
  }) {
    return MyoroSliderWidgetShowcaseThemeExtension(
      widgetSliderValueTextStyle: widgetSliderValueTextStyle ?? this.widgetSliderValueTextStyle,
      widgetSliderLabelSpacing: widgetSliderLabelSpacing ?? this.widgetSliderLabelSpacing,
    );
  }

  @override
  ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSliderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetSliderValueTextStyle: TextStyle.lerp(widgetSliderValueTextStyle, other.widgetSliderValueTextStyle, t),
      widgetSliderLabelSpacing: lerpDouble(widgetSliderLabelSpacing, other.widgetSliderLabelSpacing, t),
    );
  }
}
