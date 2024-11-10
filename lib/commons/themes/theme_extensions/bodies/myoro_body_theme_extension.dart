import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroBody].
final class MyoroBodyThemeExtension extends ThemeExtension<MyoroBodyThemeExtension> {
  const MyoroBodyThemeExtension();

  @override
  MyoroBodyThemeExtension copyWith() => const MyoroBodyThemeExtension();

  @override
  ThemeExtension<MyoroBodyThemeExtension> lerp(
    covariant ThemeExtension<MyoroBodyThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
