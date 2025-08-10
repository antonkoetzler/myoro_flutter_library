import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFilePicker].
@immutable
@myoroThemeExtension
final class MyoroFilePickerThemeExtension extends ThemeExtension<MyoroFilePickerThemeExtension>
    with _$MyoroFilePickerThemeExtensionMixin {
  const MyoroFilePickerThemeExtension();

  // coverage:ignore-start
  const MyoroFilePickerThemeExtension.fake();
  // coverage:ignore-end

  const MyoroFilePickerThemeExtension.builder();

  @override
  MyoroFilePickerThemeExtension lerp(covariant ThemeExtension<MyoroFilePickerThemeExtension>? other, double t) {
    return this;
  }
}
