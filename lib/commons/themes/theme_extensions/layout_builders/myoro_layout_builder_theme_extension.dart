import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroLayoutBuilder].
final class MyoroLayoutBuilderThemeExtension extends ThemeExtension<MyoroLayoutBuilderThemeExtension> {
  const MyoroLayoutBuilderThemeExtension();

  @override
  MyoroLayoutBuilderThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroLayoutBuilderThemeExtension> lerp(
    covariant ThemeExtension<MyoroLayoutBuilderThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
