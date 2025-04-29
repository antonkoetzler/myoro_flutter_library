import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTableWidgetShowcase].
///
/// TODO: Needs to be tested.
@immutable
final class MyoroTableWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTableWidgetShowcaseThemeExtension> {
  const MyoroTableWidgetShowcaseThemeExtension();

  const MyoroTableWidgetShowcaseThemeExtension.builder();

  @override
  MyoroTableWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroTableWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTableWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableWidgetShowcaseThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroTableWidgetShowcaseThemeExtension(\n'
      ');';
}
