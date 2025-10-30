import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_radio_style.g.dart';

/// Style model of [MyoroGroupRadio].
@immutable
@myoroModel
class MyoroGroupRadioStyle with _$MyoroGroupRadioStyleMixin {
  /// Lerp function.
  static MyoroGroupRadioStyle lerp(MyoroGroupRadioStyle? a, MyoroGroupRadioStyle? b, double t) {
    return MyoroGroupRadioStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      runSpacing: lerpDouble(a?.runSpacing, b?.runSpacing, t),
    );
  }

  /// Default constructor.
  const MyoroGroupRadioStyle({this.spacing, this.runSpacing});

  /// Fake constructor.
  factory MyoroGroupRadioStyle.fake() {
    return MyoroGroupRadioStyle(spacing: myoroNullableFake<double>(), runSpacing: myoroNullableFake<double>());
  }

  /// Main axis spacing in between each radio.
  final double? spacing;

  /// Cross axis spacing in between each radio.
  final double? runSpacing;
}
