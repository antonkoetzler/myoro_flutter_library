import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroMaterialApp].
final class MyoroMaterialAppThemeExtension extends ThemeExtension<MyoroMaterialAppThemeExtension> {
  const MyoroMaterialAppThemeExtension();

  @override
  MyoroMaterialAppThemeExtension copyWith() => const MyoroMaterialAppThemeExtension();

  @override
  ThemeExtension<MyoroMaterialAppThemeExtension> lerp(
    covariant ThemeExtension<MyoroMaterialAppThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
