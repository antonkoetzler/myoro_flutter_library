import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroPieGraph].
final class MyoroPieGraphThemeExtension extends ThemeExtension<MyoroPieGraphThemeExtension> {
  const MyoroPieGraphThemeExtension();

  @override
  MyoroPieGraphThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroPieGraphThemeExtension> lerp(
    covariant ThemeExtension<MyoroPieGraphThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
