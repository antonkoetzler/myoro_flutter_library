import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension> {
  const PaddingWidgetShowcaseOptionThemeExtension();

  const PaddingWidgetShowcaseOptionThemeExtension.fake();

  const PaddingWidgetShowcaseOptionThemeExtension.builder();

  @override
  PaddingWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  PaddingWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is PaddingWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
