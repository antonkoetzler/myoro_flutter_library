import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroAccordionWidgetShowcase].
final class MyoroAccordionWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroAccordionWidgetShowcaseThemeExtension> {
  const MyoroAccordionWidgetShowcaseThemeExtension();

  const MyoroAccordionWidgetShowcaseThemeExtension.fake();

  const MyoroAccordionWidgetShowcaseThemeExtension.builder();

  @override
  MyoroAccordionWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroAccordionWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroAccordionWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionWidgetShowcaseThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroAccordionWidgetShowcaseThemeExtension(\n'
      ');';
}
