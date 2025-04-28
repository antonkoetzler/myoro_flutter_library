import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [TextOverflowWidgetShowcaseOption].
final class TextOverflowWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextOverflowWidgetShowcaseOptionThemeExtension> {
  const TextOverflowWidgetShowcaseOptionThemeExtension();

  const TextOverflowWidgetShowcaseOptionThemeExtension.fake();

  const TextOverflowWidgetShowcaseOptionThemeExtension.builder();

  @override
  TextOverflowWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  TextOverflowWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextOverflowWidgetShowcaseOptionThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is TextOverflowWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'TextOverflowWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
