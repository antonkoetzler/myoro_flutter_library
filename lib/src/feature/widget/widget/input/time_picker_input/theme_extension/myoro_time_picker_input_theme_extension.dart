import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_time_picker_input_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTimePickerInput].
@immutable
@myoroThemeExtension
class MyoroTimePickerInputThemeExtension extends ThemeExtension<MyoroTimePickerInputThemeExtension>
    with _$MyoroTimePickerInputThemeExtensionMixin {
  // coverage:ignore-start
  const MyoroTimePickerInputThemeExtension();
  // coverage:ignore-end

  // coverage:ignore-start
  const MyoroTimePickerInputThemeExtension.fake();
  // coverage:ignore-end

  const MyoroTimePickerInputThemeExtension.builder();

  @override
  ThemeExtension<MyoroTimePickerInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroTimePickerInputThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
