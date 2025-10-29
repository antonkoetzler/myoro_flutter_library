import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_style.g.dart';

/// Style model of [MyoroScrollable].
@immutable
@myoroModel
class MyoroScrollableStyle with _$MyoroScrollableStyleMixin {
  /// Lerp function.
  static MyoroScrollableStyle lerp(MyoroScrollableStyle? a, MyoroScrollableStyle? b, double t) {
    return MyoroScrollableStyle(
      gradientTopColor: Color.lerp(a?.gradientTopColor, b?.gradientTopColor, t),
      gradientBottomColor: Color.lerp(a?.gradientBottomColor, b?.gradientBottomColor, t),
      gradientLeftColor: Color.lerp(a?.gradientLeftColor, b?.gradientLeftColor, t),
      gradientRightColor: Color.lerp(a?.gradientRightColor, b?.gradientRightColor, t),
      gradientSize: lerpDouble(a?.gradientSize, b?.gradientSize, t),
      gradientColor: Color.lerp(a?.gradientColor, b?.gradientColor, t),
    );
  }

  /// Default constructor.
  const MyoroScrollableStyle({
    this.gradientTopColor,
    this.gradientBottomColor,
    this.gradientLeftColor,
    this.gradientRightColor,
    this.gradientSize = 20.0,
    this.gradientColor = Colors.white,
  });

  /// Fake constructor.
  MyoroScrollableStyle.fake()
    : gradientTopColor = myoroNullableFake<Color>(),
      gradientBottomColor = myoroNullableFake<Color>(),
      gradientLeftColor = myoroNullableFake<Color>(),
      gradientRightColor = myoroNullableFake<Color>(),
      gradientSize = myoroNullableFake<double>(),
      gradientColor = myoroNullableFake<Color>();

  /// Color for the top gradient overlay (when scrolling vertically).
  final Color? gradientTopColor;

  /// Color for the bottom gradient overlay (when scrolling vertically).
  final Color? gradientBottomColor;

  /// Color for the left gradient overlay (when scrolling horizontally).
  final Color? gradientLeftColor;

  /// Color for the right gradient overlay (when scrolling horizontally).
  final Color? gradientRightColor;

  /// Size of the gradient overlays in logical pixels.
  final double? gradientSize;

  /// Default color for gradient overlays.
  final Color? gradientColor;
}
