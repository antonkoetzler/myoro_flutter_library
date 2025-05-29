import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [ColorDropdownWidgetShowcaseOption].
final class ColorDropdownWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ColorDropdownWidgetShowcaseOptionThemeExtension> {
  const ColorDropdownWidgetShowcaseOptionThemeExtension();

  const ColorDropdownWidgetShowcaseOptionThemeExtension.fake();

  const ColorDropdownWidgetShowcaseOptionThemeExtension.builder();

  @override
  ColorDropdownWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  ColorDropdownWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ColorDropdownWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is ColorDropdownWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'ColorDropdownWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
