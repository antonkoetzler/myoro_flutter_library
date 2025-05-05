import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [IconWidgetShowcaseOption].
final class IconWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<IconWidgetShowcaseOptionThemeExtension> {
  const IconWidgetShowcaseOptionThemeExtension();

  const IconWidgetShowcaseOptionThemeExtension.fake();

  const IconWidgetShowcaseOptionThemeExtension.builder();

  @override
  IconWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  IconWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<IconWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is IconWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'IconWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
