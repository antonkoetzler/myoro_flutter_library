import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroResolver].
final class MyoroResolverThemeExtension
    extends ThemeExtension<MyoroResolverThemeExtension> {
  const MyoroResolverThemeExtension();

  @override
  MyoroResolverThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroResolverThemeExtension> lerp(
    covariant ThemeExtension<MyoroResolverThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
