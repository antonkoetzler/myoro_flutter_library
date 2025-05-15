import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroCheckboxWidgetShowcase].
@immutable
final class MyoroCheckboxWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension> {
  const MyoroCheckboxWidgetShowcaseThemeExtension();

  const MyoroCheckboxWidgetShowcaseThemeExtension.fake();

  const MyoroCheckboxWidgetShowcaseThemeExtension.builder();

  @override
  MyoroCheckboxWidgetShowcaseThemeExtension copyWith({
    double? labelTextStyleOptionWidth,
  }) {
    return this;
  }

  @override
  MyoroCheckboxWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroCheckboxWidgetShowcaseThemeExtension(\n'
      ');';
}
