import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_style.g.dart';

/// Base style of a scrollable.
@immutable
@myoroModel
class MyoroScrollableStyle with _$MyoroScrollableStyleMixin {
  /// Lerp function.
  static MyoroScrollableStyle lerp(MyoroScrollableStyle? a, MyoroScrollableStyle? b, double t) {
    return MyoroScrollableStyle(
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      gradientSize: lerpDouble(a?.gradientSize, b?.gradientSize, t),
      gradientColor: Color.lerp(a?.gradientColor, b?.gradientColor, t),
    );
  }

  /// Default constructor.
  const MyoroScrollableStyle({this.padding, this.gradientSize, this.gradientColor});

  /// Fake constructor.
  MyoroScrollableStyle.fake()
    : padding = myoroNullableFake<EdgeInsets>(),
      gradientSize = myoroNullableFake<double>(),
      gradientColor = myoroNullableFake<Color>();

  /// [SingleChildScrollView.padding].
  final EdgeInsets? padding;

  /// Height of the starting gradient.
  final double? gradientSize;

  /// Color of the gradient.
  final Color? gradientColor;
}
