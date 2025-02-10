import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroScreen].
final class MyoroScreenThemeExtension extends ThemeExtension<MyoroScreenThemeExtension> {
  const MyoroScreenThemeExtension();

  @override
  MyoroScreenThemeExtension copyWith() => const MyoroScreenThemeExtension();

  @override
  ThemeExtension<MyoroScreenThemeExtension> lerp(covariant ThemeExtension<MyoroScreenThemeExtension>? other, double t) => this;
}
