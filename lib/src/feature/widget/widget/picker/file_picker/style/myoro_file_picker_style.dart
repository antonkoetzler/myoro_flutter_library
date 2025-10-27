import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_style.g.dart';

/// Style model of [MyoroFilePicker].
@immutable
@myoroModel
class MyoroFilePickerStyle with _$MyoroFilePickerStyleMixin {
  static MyoroFilePickerStyle lerp(MyoroFilePickerStyle? a, MyoroFilePickerStyle? b, double t) {
    return MyoroFilePickerStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
    );
  }

  const MyoroFilePickerStyle({this.spacing, this.textStyle});

  factory MyoroFilePickerStyle.fake() {
    return MyoroFilePickerStyle(
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      textStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }

  /// Spacing between the selected file section text and the selection button.
  final double? spacing;

  /// [TextStyle] of the text of the [MyoroFilePicker].
  final TextStyle? textStyle;
}
