import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_style.g.dart';

/// Style model of [MyoroFilePicker].
@immutable
@myoroModel
class MyoroFilePickerStyle with _$MyoroFilePickerStyleMixin {
  const MyoroFilePickerStyle({this.spacing, this.textStyle});

  // coverage:ignore-start
  factory MyoroFilePickerStyle.fake() {
    return MyoroFilePickerStyle(
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      textStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }
  // coverage:ignore-end

  /// Spacing between the selected file section text and the selection button.
  final double? spacing;

  /// [TextStyle] of the text of the [MyoroFilePicker].
  final TextStyle? textStyle;

  /// Copy with.
  MyoroFilePickerStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    TextStyle? textStyle,
    bool textStyleProvided = true,
  }) {
    return MyoroFilePickerStyle(
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      textStyle: textStyleProvided ? (textStyle ?? this.textStyle) : null,
    );
  }
}
