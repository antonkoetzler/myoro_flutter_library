import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroForm].
final class MyoroFormThemeExtension extends ThemeExtension<MyoroFormThemeExtension> {
  const MyoroFormThemeExtension();

  @override
  MyoroFormThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroFormThemeExtension> lerp(
    covariant ThemeExtension<MyoroFormThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
