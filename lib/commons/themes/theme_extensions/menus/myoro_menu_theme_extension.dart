import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroMenu].
final class MyoroMenuThemeExtension extends ThemeExtension<MyoroMenuThemeExtension> {
  const MyoroMenuThemeExtension();

  @override
  MyoroMenuThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroMenuThemeExtension> lerp(
    covariant ThemeExtension<MyoroMenuThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
