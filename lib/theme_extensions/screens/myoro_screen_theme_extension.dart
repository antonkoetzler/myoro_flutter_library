import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroScreen].
class MyoroScreenThemeExtension extends ThemeExtension<MyoroScreenThemeExtension> {
  const MyoroScreenThemeExtension();

  const MyoroScreenThemeExtension.builder();

  @override
  MyoroScreenThemeExtension copyWith() => const MyoroScreenThemeExtension();

  @override
  ThemeExtension<MyoroScreenThemeExtension> lerp(
    covariant ThemeExtension<MyoroScreenThemeExtension>? other,
    double t,
  ) => this;

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroScreenThemeExtension(\n'
      ');';
}
