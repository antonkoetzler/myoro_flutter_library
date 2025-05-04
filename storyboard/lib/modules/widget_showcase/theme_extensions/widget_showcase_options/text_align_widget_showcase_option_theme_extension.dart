import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [TextAlignWidgetShowcaseOption].
final class TextAlignWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextAlignWidgetShowcaseOptionThemeExtension> {
  const TextAlignWidgetShowcaseOptionThemeExtension();

  const TextAlignWidgetShowcaseOptionThemeExtension.fake();

  const TextAlignWidgetShowcaseOptionThemeExtension.builder();

  @override
  TextAlignWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  TextAlignWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextAlignWidgetShowcaseOptionThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is TextAlignWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'TextAlignWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
