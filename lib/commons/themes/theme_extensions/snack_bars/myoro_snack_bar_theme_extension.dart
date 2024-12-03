import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSnackBar].
final class MyoroSnackBarThemeExtension extends ThemeExtension<MyoroSnackBarThemeExtension> {
  const MyoroSnackBarThemeExtension();

  @override
  MyoroSnackBarThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroSnackBarThemeExtension> lerp(
    covariant ThemeExtension<MyoroSnackBarThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
