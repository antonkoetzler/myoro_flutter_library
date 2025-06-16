import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_date_picker_input_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDatePickerInput].
@immutable
@myoroThemeExtension
class MyoroDatePickerInputThemeExtension extends ThemeExtension<MyoroDatePickerInputThemeExtension>
    with _$MyoroDatePickerInputThemeExtensionMixin {
  const MyoroDatePickerInputThemeExtension();

  const MyoroDatePickerInputThemeExtension.fake();

  const MyoroDatePickerInputThemeExtension.builder();

  @override
  ThemeExtension<MyoroDatePickerInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroDatePickerInputThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
