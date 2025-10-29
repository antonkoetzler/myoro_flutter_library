import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_radio_style.g.dart';

/// Style model of [MyoroRadio].
@immutable
@myoroModel
class MyoroRadioStyle with _$MyoroRadioStyleMixin {
  /// Lerp function.
  static MyoroRadioStyle lerp(MyoroRadioStyle? a, MyoroRadioStyle? b, double t) {
    return MyoroRadioStyle(
      activeColor: Color.lerp(a?.activeColor, b?.activeColor, t),
      hoverColor: Color.lerp(a?.hoverColor, b?.hoverColor, t),
      labelTextStyle: TextStyle.lerp(a?.labelTextStyle, b?.labelTextStyle, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      splashRadius: lerpDouble(a?.splashRadius, b?.splashRadius, t),
    );
  }

  /// Default constructor.
  const MyoroRadioStyle({this.activeColor, this.hoverColor, this.labelTextStyle, this.spacing, this.splashRadius});

  /// Fake constructor.
  factory MyoroRadioStyle.fake() {
    return MyoroRadioStyle(
      activeColor: myoroNullableFake<Color>(),
      hoverColor: myoroNullableFake<Color>(),
      labelTextStyle: myoroNullableFake<TextStyle>(),
      spacing: myoroNullableFake<double>(),
      splashRadius: myoroNullableFake<double>(),
    );
  }

  /// Color of the radio itself.
  final Color? activeColor;

  /// Color of background when hovered.
  final Color? hoverColor;

  /// [TextStyle] of [MyoroRadio.label].
  final TextStyle? labelTextStyle;

  /// Spacing in between the radio and [MyoroRadio.label].
  final double? spacing;

  /// Background (splash) color size.
  final double? splashRadius;
}
