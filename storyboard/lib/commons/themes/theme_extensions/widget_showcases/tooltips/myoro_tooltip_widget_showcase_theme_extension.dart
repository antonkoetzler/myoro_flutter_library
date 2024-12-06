import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroTooltipWidgetShowcase].
final class MyoroTooltipWidgetShowcaseThemeExtension extends ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension> {
  /// [MyoroTooltip.margin].
  final EdgeInsets? tooltipMargin;

  /// Size of the [Container] in [_Widget].
  final Size containerSize;

  /// [TextStyle] of the [Text] in [_Widget].
  final TextStyle containerTextStyle;

  const MyoroTooltipWidgetShowcaseThemeExtension({
    required this.tooltipMargin,
    required this.containerSize,
    required this.containerTextStyle,
  });

  @override
  MyoroTooltipWidgetShowcaseThemeExtension copyWith({
    EdgeInsets? tooltipMargin,
    Size? containerSize,
    TextStyle? containerTextStyle,
  }) {
    return MyoroTooltipWidgetShowcaseThemeExtension(
      tooltipMargin: tooltipMargin ?? this.tooltipMargin,
      containerSize: containerSize ?? this.containerSize,
      containerTextStyle: containerTextStyle ?? this.containerTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTooltipWidgetShowcaseThemeExtension) return this;
    return copyWith(
      tooltipMargin: EdgeInsets.lerp(tooltipMargin, other.tooltipMargin, t),
      containerSize: Size.lerp(containerSize, other.containerSize, t),
      containerTextStyle: TextStyle.lerp(containerTextStyle, other.containerTextStyle, t),
    );
  }
}
