import 'package:flutter/material.dart';

/// [ThemeExtension] of [MainScreen].
///
/// TODO: Needs to be tested.
final class MainScreenThemeExtension
    extends ThemeExtension<MainScreenThemeExtension> {
  const MainScreenThemeExtension();

  const MainScreenThemeExtension.fake();

  const MainScreenThemeExtension.builder();

  @override
  MainScreenThemeExtension copyWith() {
    return this;
  }

  @override
  MainScreenThemeExtension lerp(
    covariant ThemeExtension<MainScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MainScreenThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MainScreenThemeExtension(\n'
      ');';
}
