import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_style.g.dart';

/// Style model of [MyoroCircularLoader].
@immutable
@myoroModel
class MyoroCircularLoaderStyle with _$MyoroCircularLoaderStyleMixin {
  /// Lerp function.
  static MyoroCircularLoaderStyle lerp(MyoroCircularLoaderStyle? a, MyoroCircularLoaderStyle? b, double t) {
    return MyoroCircularLoaderStyle(color: Color.lerp(a?.color, b?.color, t), size: lerpDouble(a?.size, b?.size, t));
  }

  /// Default constructor.
  const MyoroCircularLoaderStyle({this.color, this.size});

  /// Fake constructor.
  factory MyoroCircularLoaderStyle.fake() {
    return MyoroCircularLoaderStyle(color: myoroNullableFake<Color>(), size: myoroNullableFake<double>());
  }

  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Default size of the [MyoroCircularLoader].
  final double? size;
}
