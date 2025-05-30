import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [ConstraintsWidgetShowcase].
final class ConstraintsWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ConstraintsWidgetShowcaseOptionThemeExtension> {
  const ConstraintsWidgetShowcaseOptionThemeExtension();

  const ConstraintsWidgetShowcaseOptionThemeExtension.fake();

  const ConstraintsWidgetShowcaseOptionThemeExtension.builder();

  @override
  ConstraintsWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  ConstraintsWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ConstraintsWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is ConstraintsWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'ConstraintsWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
