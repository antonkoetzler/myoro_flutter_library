import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_style.g.dart';

/// Style model of [MyoroResizeDivider].
@immutable
@myoroModel
class MyoroResizeDividerStyle extends MyoroBasicDividerStyle with _$MyoroResizeDividerStyleMixin {
  static MyoroResizeDividerStyle lerp(MyoroResizeDividerStyle? a, MyoroResizeDividerStyle? b, double t) {
    return MyoroResizeDividerStyle(
      color: Color.lerp(a?.color, b?.color, t),
      shortValue: lerpDouble(a?.shortValue, b?.shortValue, t),
      longValue: lerpDouble(a?.longValue, b?.longValue, t),
      resizeButtonBorderRadius: BorderRadius.lerp(a?.resizeButtonBorderRadius, b?.resizeButtonBorderRadius, t),
      resizeButtonColor: Color.lerp(a?.resizeButtonColor, b?.resizeButtonColor, t),
      resizeButtonShortValue: lerpDouble(a?.resizeButtonShortValue, b?.resizeButtonShortValue, t),
      resizeButtonLongValue: lerpDouble(a?.resizeButtonLongValue, b?.resizeButtonLongValue, t),
    );
  }

  const MyoroResizeDividerStyle({
    super.color,
    super.shortValue,
    super.longValue,
    this.resizeButtonBorderRadius,
    this.resizeButtonColor,
    this.resizeButtonShortValue,
    this.resizeButtonLongValue,
  });

  // coverage:ignore-start
  factory MyoroResizeDividerStyle.fake() {
    return MyoroResizeDividerStyle(
      color: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      shortValue: faker.randomGenerator.boolean() ? myoroFake<double>() : null,
      longValue: faker.randomGenerator.boolean() ? myoroFake<double>() : null,
      resizeButtonBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      resizeButtonColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      resizeButtonShortValue: faker.randomGenerator.boolean() ? myoroFake<double>() : null,
      resizeButtonLongValue: faker.randomGenerator.boolean() ? myoroFake<double>() : null,
    );
  }
  // coverage:ignore-end

  /// Border radius of the resize button.
  final BorderRadius? resizeButtonBorderRadius;

  /// Background color of the resize button.
  final Color? resizeButtonColor;

  /// Width of the resize button.
  final double? resizeButtonShortValue;

  /// Height of the resize button.
  final double? resizeButtonLongValue;
}
