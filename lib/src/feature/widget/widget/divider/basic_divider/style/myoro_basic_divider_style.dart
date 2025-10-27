import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_style.g.dart';

/// Style model of [MyoroBasicDivider].
@immutable
@myoroModel
class MyoroBasicDividerStyle with _$MyoroBasicDividerStyleMixin {
  static MyoroBasicDividerStyle lerp(MyoroBasicDividerStyle? a, MyoroBasicDividerStyle? b, double t) {
    return MyoroBasicDividerStyle(
      color: Color.lerp(a?.color, b?.color, t),
      shortValue: lerpDouble(a?.shortValue, b?.shortValue, t),
      longValue: lerpDouble(a?.longValue, b?.longValue, t),
    );
  }

  const MyoroBasicDividerStyle({this.color, this.shortValue, this.longValue});

  factory MyoroBasicDividerStyle.fake() {
    return MyoroBasicDividerStyle(
      color: myoroFake<Color>(),
      shortValue: faker.randomGenerator.decimal(),
      longValue: faker.randomGenerator.decimal(),
    );
  }

  /// [Color] of the [MyoroDivider].
  final Color? color;

  /// Width of the divider. [kMyoroBorderWidth] by default.
  final double? shortValue;

  /// Height of the divider. [double.infinity] by default.
  final double? longValue;
}
