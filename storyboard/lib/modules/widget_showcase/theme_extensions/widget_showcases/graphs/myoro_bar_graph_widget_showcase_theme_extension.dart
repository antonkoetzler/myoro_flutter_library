import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroBarGraphWidgetShowcase].
final class MyoroBarGraphWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension> {
  const MyoroBarGraphWidgetShowcaseThemeExtension();

  const MyoroBarGraphWidgetShowcaseThemeExtension.builder();

  @override
  MyoroBarGraphWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphWidgetShowcaseThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroBarGraphWidgetShowcaseThemeExtension(\n'
      ');';
}
