import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSearchInput].
final class MyoroSearchInputThemeExtension extends ThemeExtension<MyoroSearchInputThemeExtension> {
  const MyoroSearchInputThemeExtension();

  @override
  MyoroSearchInputThemeExtension copyWith() {
    return this;
  }

  @override
  ThemeExtension<MyoroSearchInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroSearchInputThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
