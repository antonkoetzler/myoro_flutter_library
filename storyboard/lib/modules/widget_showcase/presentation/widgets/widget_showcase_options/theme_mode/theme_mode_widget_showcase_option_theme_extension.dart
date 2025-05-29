import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [ThemeModeWidgetShowcaseOption].
final class ThemeModeWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ThemeModeWidgetShowcaseOptionThemeExtension> {
  const ThemeModeWidgetShowcaseOptionThemeExtension();

  const ThemeModeWidgetShowcaseOptionThemeExtension.fake();

  const ThemeModeWidgetShowcaseOptionThemeExtension.builder();

  @override
  ThemeModeWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  ThemeModeWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ThemeModeWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is ThemeModeWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'ThemeModeWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
