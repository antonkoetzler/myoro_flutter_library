import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_field_style.g.dart';

/// Style model of [MyoroField].
@immutable
@myoroModel
class MyoroFieldStyle with _$MyoroFieldStyleMixin {
  /// Lerp function.
  static MyoroFieldStyle lerp(MyoroFieldStyle? a, MyoroFieldStyle? b, double t) {
    return MyoroFieldStyle(
      labelTextStyle: TextStyle.lerp(a?.labelTextStyle, b?.labelTextStyle, t),
      dataTextStyle: TextStyle.lerp(a?.dataTextStyle, b?.dataTextStyle, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      decoration: BoxDecoration.lerp(a?.decoration, b?.decoration, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
    );
  }

  /// Default constructor.
  const MyoroFieldStyle({this.labelTextStyle, this.dataTextStyle, this.spacing, this.decoration, this.contentPadding});

  /// [TextStyle] of the label.
  final TextStyle? labelTextStyle;

  /// [TextStyle] of the data.
  final TextStyle? dataTextStyle;

  /// Spacing in between the label and the data.
  final double? spacing;

  /// [BoxDecoration] of the field.
  final BoxDecoration? decoration;

  /// Content padding.
  final EdgeInsets? contentPadding;
}
