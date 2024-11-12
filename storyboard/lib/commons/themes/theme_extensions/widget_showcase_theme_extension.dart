import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [EdgeInsets] of [_WidgetWrapper].
  final EdgeInsets widgetWrapperPadding;

  /// [EdgeInsets] of the content in [_WidgetWrapper].
  final EdgeInsets widgetWrapperContentPadding;

  /// Background color of [_WidgetWrapper].
  final Color widgetWrapperBackgroundColor;

  /// Border radius [_WidgetWrapper].
  final BorderRadius widgetWrapperBorderRadius;

  /// Border of [_WidgetWrapper].
  final Border widgetWrapperBorder;

  /// Padding of the content in [_WidgetOptions].
  final EdgeInsets widgetOptionsContentPadding;

  /// Alignment of the content in [_WidgetOptions].
  final Alignment widgetOptionsContentAlignment;

  const WidgetShowcaseThemeExtension({
    required this.widgetWrapperPadding,
    required this.widgetWrapperContentPadding,
    required this.widgetWrapperBackgroundColor,
    required this.widgetWrapperBorderRadius,
    required this.widgetWrapperBorder,
    required this.widgetOptionsContentPadding,
    required this.widgetOptionsContentAlignment,
  });

  @override
  WidgetShowcaseThemeExtension copyWith({
    EdgeInsets? widgetWrapperPadding,
    EdgeInsets? widgetWrapperContentPadding,
    Color? widgetWrapperBackgroundColor,
    BorderRadius? widgetWrapperBorderRadius,
    Border? widgetWrapperBorder,
    EdgeInsets? widgetOptionsContentPadding,
    Alignment? widgetOptionsContentAlignment,
  }) {
    return WidgetShowcaseThemeExtension(
      widgetWrapperPadding: widgetWrapperPadding ?? this.widgetWrapperPadding,
      widgetWrapperContentPadding: widgetWrapperContentPadding ?? this.widgetWrapperContentPadding,
      widgetWrapperBackgroundColor: widgetWrapperBackgroundColor ?? this.widgetWrapperBackgroundColor,
      widgetWrapperBorderRadius: widgetWrapperBorderRadius ?? this.widgetWrapperBorderRadius,
      widgetWrapperBorder: widgetWrapperBorder ?? this.widgetWrapperBorder,
      widgetOptionsContentPadding: widgetOptionsContentPadding ?? this.widgetOptionsContentPadding,
      widgetOptionsContentAlignment: widgetOptionsContentAlignment ?? this.widgetOptionsContentAlignment,
    );
  }

  @override
  ThemeExtension<WidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetWrapperPadding: EdgeInsets.lerp(widgetWrapperPadding, other.widgetWrapperPadding, t),
      widgetWrapperContentPadding: EdgeInsets.lerp(widgetWrapperContentPadding, other.widgetWrapperContentPadding, t),
      widgetWrapperBackgroundColor: Color.lerp(widgetWrapperBackgroundColor, other.widgetWrapperBackgroundColor, t),
      widgetWrapperBorderRadius: BorderRadius.lerp(widgetWrapperBorderRadius, other.widgetWrapperBorderRadius, t),
      widgetWrapperBorder: Border.lerp(widgetWrapperBorder, other.widgetWrapperBorder, t),
      widgetOptionsContentPadding: EdgeInsets.lerp(widgetOptionsContentPadding, other.widgetOptionsContentPadding, t),
      widgetOptionsContentAlignment: Alignment.lerp(widgetOptionsContentAlignment, other.widgetOptionsContentAlignment, t),
    );
  }
}
