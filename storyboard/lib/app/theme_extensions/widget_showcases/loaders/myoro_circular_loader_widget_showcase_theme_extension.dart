import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroCircularLoaderWidgetShowcase].
final class MyoroCircularLoaderWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension> {
  const MyoroCircularLoaderWidgetShowcaseThemeExtension();

  const MyoroCircularLoaderWidgetShowcaseThemeExtension.builder();

  @override
  MyoroCircularLoaderWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCircularLoaderWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }
}
