import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroSearchInputWidgetShowcase].
final class MyoroSearchInputWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSearchInputWidgetShowcaseThemeExtension> {
  const MyoroSearchInputWidgetShowcaseThemeExtension();

  const MyoroSearchInputWidgetShowcaseThemeExtension.builder();

  @override
  MyoroSearchInputWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroSearchInputWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSearchInputWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }
}
