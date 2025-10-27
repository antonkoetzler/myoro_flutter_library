import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFilePicker].
@immutable
@myoroThemeExtension
final class MyoroFilePickerThemeExtension extends ThemeExtension<MyoroFilePickerThemeExtension>
    with _$MyoroFilePickerThemeExtensionMixin
    implements MyoroFilePickerStyle {
  const MyoroFilePickerThemeExtension({this.spacing, this.textStyle});

  MyoroFilePickerThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      textStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;

  MyoroFilePickerThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      textStyle = textTheme.bodySmall!;

  /// Spacing between the selected file section text and the selection button.
  @override
  final double? spacing;

  /// [TextStyle] of the text of the [MyoroFilePicker].
  @override
  final TextStyle? textStyle;

  @override
  MyoroFilePickerThemeExtension lerp(covariant MyoroFilePickerThemeExtension? other, double t) {
    if (other is! MyoroFilePickerThemeExtension) return this;
    final style = MyoroFilePickerStyle.lerp(this, other, t);
    return MyoroFilePickerThemeExtension(spacing: style.spacing, textStyle: style.textStyle);
  }
}
