import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [Color] of [_WidgetWrapper].
  final Color widgetWrapperBackgroundColor;

  /// [EdgeInsets] of [_WidgetWrapper].
  final EdgeInsets widgetWrapperPadding;

  /// [EdgeInsets] of the content in [_WidgetWrapper].
  final EdgeInsets widgetWrapperContentPadding;

  /// Border radius [_WidgetWrapper].
  final BorderRadius widgetWrapperBorderRadius;

  /// Border of [_WidgetWrapper].
  final Border widgetWrapperBorder;

  /// [Container.alignment] of [_WrapperWrapper].
  final Alignment wrapperWrapperAlignment;

  /// Padding of [_WidgetOptions].
  final EdgeInsets widgetOptionsPadding;

  /// Spacing of items in [_WidgetOptions].
  final EdgeInsets widgetOptionsDividerPadding;

  const WidgetShowcaseThemeExtension({
    required this.widgetWrapperBackgroundColor,
    required this.widgetWrapperPadding,
    required this.widgetWrapperContentPadding,
    required this.widgetWrapperBorderRadius,
    required this.widgetWrapperBorder,
    required this.wrapperWrapperAlignment,
    required this.widgetOptionsPadding,
    required this.widgetOptionsDividerPadding,
  });

  @override
  WidgetShowcaseThemeExtension copyWith({
    Color? widgetWrapperBackgroundColor,
    EdgeInsets? widgetWrapperPadding,
    EdgeInsets? widgetWrapperContentPadding,
    BorderRadius? widgetWrapperBorderRadius,
    Border? widgetWrapperBorder,
    Alignment? wrapperWrapperAlignment,
    EdgeInsets? widgetOptionsPadding,
    EdgeInsets? widgetOptionsDividerPadding,
  }) {
    return WidgetShowcaseThemeExtension(
      widgetWrapperBackgroundColor: widgetWrapperBackgroundColor ?? this.widgetWrapperBackgroundColor,
      widgetWrapperPadding: widgetWrapperPadding ?? this.widgetWrapperPadding,
      widgetWrapperContentPadding: widgetWrapperContentPadding ?? this.widgetWrapperContentPadding,
      widgetWrapperBorderRadius: widgetWrapperBorderRadius ?? this.widgetWrapperBorderRadius,
      widgetWrapperBorder: widgetWrapperBorder ?? this.widgetWrapperBorder,
      wrapperWrapperAlignment: wrapperWrapperAlignment ?? this.wrapperWrapperAlignment,
      widgetOptionsPadding: widgetOptionsPadding ?? this.widgetOptionsPadding,
      widgetOptionsDividerPadding: widgetOptionsDividerPadding ?? this.widgetOptionsDividerPadding,
    );
  }

  @override
  ThemeExtension<WidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetWrapperBackgroundColor: Color.lerp(widgetWrapperBackgroundColor, other.widgetWrapperBackgroundColor, t),
      widgetWrapperPadding: EdgeInsets.lerp(widgetWrapperPadding, other.widgetWrapperPadding, t),
      widgetWrapperContentPadding: EdgeInsets.lerp(widgetWrapperContentPadding, other.widgetWrapperContentPadding, t),
      widgetWrapperBorderRadius: BorderRadius.lerp(widgetWrapperBorderRadius, other.widgetWrapperBorderRadius, t),
      widgetWrapperBorder: Border.lerp(widgetWrapperBorder, other.widgetWrapperBorder, t),
      wrapperWrapperAlignment: Alignment.lerp(wrapperWrapperAlignment, other.wrapperWrapperAlignment, t),
      widgetOptionsPadding: EdgeInsets.lerp(widgetOptionsPadding, other.widgetOptionsPadding, t),
      widgetOptionsDividerPadding: EdgeInsets.lerp(widgetOptionsDividerPadding, other.widgetOptionsDividerPadding, t),
    );
  }
}