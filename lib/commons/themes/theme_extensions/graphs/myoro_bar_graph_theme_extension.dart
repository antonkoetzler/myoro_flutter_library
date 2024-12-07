import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroBarGraph].
final class MyoroBarGraphThemeExtension extends ThemeExtension<MyoroBarGraphThemeExtension> {
  const MyoroBarGraphThemeExtension();

  @override
  MyoroBarGraphThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroBarGraphThemeExtension> lerp(
    covariant ThemeExtension<MyoroBarGraphThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
