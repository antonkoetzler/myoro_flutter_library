import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroDatePickerInput].
final class MyoroDatePickerInputThemeExtension extends ThemeExtension<MyoroDatePickerInputThemeExtension> {
  const MyoroDatePickerInputThemeExtension();

  @override
  MyoroDatePickerInputThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroDatePickerInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroDatePickerInputThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
