import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroGroupRadioWidgetShowcase].
final class MyoroGroupRadioWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension> {
  const MyoroGroupRadioWidgetShowcaseThemeExtension();

  const MyoroGroupRadioWidgetShowcaseThemeExtension.builder();

  @override
  MyoroGroupRadioWidgetShowcaseThemeExtension copyWith() {
    return const MyoroGroupRadioWidgetShowcaseThemeExtension();
  }

  @override
  ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }
}
