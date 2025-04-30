import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTableV2WidgetShowcase].
///
/// TODO: Needs to be tested.
final class MyoroTableV2WidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTableV2WidgetShowcaseThemeExtension> {
  const MyoroTableV2WidgetShowcaseThemeExtension();

  const MyoroTableV2WidgetShowcaseThemeExtension.fake();

  const MyoroTableV2WidgetShowcaseThemeExtension.builder();

  @override
  MyoroTableV2WidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroTableV2WidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTableV2WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableV2WidgetShowcaseThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroTableV2WidgetShowcaseThemeExtension(\n'
      ');';
}
