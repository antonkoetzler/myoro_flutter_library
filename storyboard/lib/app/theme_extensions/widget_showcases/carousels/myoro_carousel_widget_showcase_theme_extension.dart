import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroCarouselWidgetShowcase].
final class MyoroCarouselWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroCarouselWidgetShowcaseThemeExtension> {
  const MyoroCarouselWidgetShowcaseThemeExtension();

  const MyoroCarouselWidgetShowcaseThemeExtension.builder();

  @override
  MyoroCarouselWidgetShowcaseThemeExtension copyWith() => this;

  @override
  MyoroCarouselWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCarouselWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCarouselWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }
}
