import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDatePickerInput].
final class MyoroDatePickerInputThemeExtension extends ThemeExtension<MyoroDatePickerInputThemeExtension> {
  const MyoroDatePickerInputThemeExtension();

  @override
  MyoroDatePickerInputThemeExtension copyWith() {
    return const MyoroDatePickerInputThemeExtension();
  }

  @override
  ThemeExtension<MyoroDatePickerInputThemeExtension> lerp(covariant ThemeExtension<MyoroDatePickerInputThemeExtension>? other, double t) {
    return this;
  }
}
