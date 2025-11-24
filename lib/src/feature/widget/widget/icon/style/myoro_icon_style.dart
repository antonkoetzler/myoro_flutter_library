import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_style.g.dart';

/// Generic icon style.
@immutable
@myoroModel
class MyoroIconStyle with _$MyoroIconStyleMixin {
  /// Lerp function.
  static MyoroIconStyle? lerp(MyoroIconStyle? primary, MyoroIconStyle? other, double t) {
    // Handle null sizes by treating them as 0 for lerping
    final primarySize = primary?.size ?? 0.0;
    final otherSize = other?.size ?? 0.0;
    final size = lerpDouble(primarySize, otherSize, t);
    return MyoroIconStyle(color: Color.lerp(primary?.color, other?.color, t), size: size);
  }

  /// Default constructor.
  const MyoroIconStyle({this.color, this.size});

  /// Fake constructor.
  MyoroIconStyle.fake() : color = myoroNullableFake<Color>(), size = myoroNullableFake<double>();

  /// [Icon.color].
  final Color? color;

  /// [Icon.size]
  final double? size;
}
