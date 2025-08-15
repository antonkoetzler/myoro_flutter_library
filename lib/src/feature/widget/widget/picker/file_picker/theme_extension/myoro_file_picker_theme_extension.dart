import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFilePicker].
@immutable
@myoroThemeExtension
final class MyoroFilePickerThemeExtension extends ThemeExtension<MyoroFilePickerThemeExtension>
    with _$MyoroFilePickerThemeExtensionMixin {
  const MyoroFilePickerThemeExtension({required this.spacing, required this.textStyle});

  // coverage:ignore-start
  MyoroFilePickerThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      textStyle = myoroFake<TextStyle>();
  // coverage:ignore-end

  MyoroFilePickerThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      textStyle = textTheme.bodySmall!;

  /// Spacing between the selected file section text and the selection button.
  final double spacing;

  /// [TextStyle] of the text of the [MyoroFilePicker].
  final TextStyle textStyle;

  @override
  MyoroFilePickerThemeExtension lerp(covariant ThemeExtension<MyoroFilePickerThemeExtension>? other, double t) {
    if (other is! MyoroFilePickerThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
