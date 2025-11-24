import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_style.g.dart';

/// Style model of [MyoroFilePicker].
@immutable
@myoroModel
class MyoroFilePickerStyle with _$MyoroFilePickerStyleMixin {
  /// Lerp function.
  static MyoroFilePickerStyle lerp(MyoroFilePickerStyle? a, MyoroFilePickerStyle? b, double t) {
    return MyoroFilePickerStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      textStyle: MyoroTextStyle.lerp(a?.textStyle, b?.textStyle, t),
    );
  }

  /// Default constructor.
  const MyoroFilePickerStyle({this.spacing, this.textStyle});

  /// Fake constructor.
  factory MyoroFilePickerStyle.fake() {
    return MyoroFilePickerStyle(spacing: myoroNullableFake<double>(), textStyle: myoroNullableFake<MyoroTextStyle>());
  }

  /// Spacing between the selected file section text and the selection button.
  final double? spacing;

  /// [TextStyle] of the text of the [MyoroFilePicker].
  final MyoroTextStyle? textStyle;
}
