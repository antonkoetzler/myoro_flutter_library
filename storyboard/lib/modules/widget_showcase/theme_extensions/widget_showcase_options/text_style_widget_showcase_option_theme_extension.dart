import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [TextStyleWidgetShowcaseOption].
final class TextStyleWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextStyleWidgetShowcaseOptionThemeExtension> {
  const TextStyleWidgetShowcaseOptionThemeExtension();

  const TextStyleWidgetShowcaseOptionThemeExtension.fake();

  const TextStyleWidgetShowcaseOptionThemeExtension.builder();

  @override
  TextStyleWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  TextStyleWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextStyleWidgetShowcaseOptionThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is TextStyleWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'TextStyleWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
