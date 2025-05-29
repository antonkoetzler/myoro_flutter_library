import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionThemeExtension extends ThemeExtension<SliderWidgetShowcaseOptionThemeExtension> {
  const SliderWidgetShowcaseOptionThemeExtension();

  const SliderWidgetShowcaseOptionThemeExtension.fake();

  const SliderWidgetShowcaseOptionThemeExtension.builder();

  @override
  SliderWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  SliderWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<SliderWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is SliderWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'SliderWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
