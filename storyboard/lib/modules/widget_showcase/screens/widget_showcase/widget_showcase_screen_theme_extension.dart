import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [WidgetShowcaseScreen].
@immutable
final class WidgetShowcaseScreenThemeExtension
    extends ThemeExtension<WidgetShowcaseScreenThemeExtension> {
  const WidgetShowcaseScreenThemeExtension();

  const WidgetShowcaseScreenThemeExtension.fake();

  const WidgetShowcaseScreenThemeExtension.builder();

  @override
  WidgetShowcaseScreenThemeExtension copyWith() {
    return this;
  }

  @override
  WidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseScreenThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenThemeExtension(\n'
      ');';
}
