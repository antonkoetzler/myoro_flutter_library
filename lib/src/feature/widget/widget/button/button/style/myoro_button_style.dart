import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_style.g.dart';

/// Style model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonStyle with _$MyoroButtonStyleMixin {
  static MyoroButtonStyle lerp(MyoroButtonStyle? a, MyoroButtonStyle? b, double t) {
    return MyoroButtonStyle(
      backgroundIdleColor: Color.lerp(a?.backgroundIdleColor, b?.backgroundIdleColor, t),
      backgroundHoverColor: Color.lerp(a?.backgroundHoverColor, b?.backgroundHoverColor, t),
      backgroundTapColor: Color.lerp(a?.backgroundTapColor, b?.backgroundTapColor, t),
      disabledBackgroundColor: Color.lerp(a?.disabledBackgroundColor, b?.disabledBackgroundColor, t),
      contentIdleColor: Color.lerp(a?.contentIdleColor, b?.contentIdleColor, t),
      contentHoverColor: Color.lerp(a?.contentHoverColor, b?.contentHoverColor, t),
      contentTapColor: Color.lerp(a?.contentTapColor, b?.contentTapColor, t),
      borderWidth: lerpDouble(a?.borderWidth, b?.borderWidth, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      borderIdleColor: Color.lerp(a?.borderIdleColor, b?.borderIdleColor, t),
      borderHoverColor: Color.lerp(a?.borderHoverColor, b?.borderHoverColor, t),
      borderTapColor: Color.lerp(a?.borderTapColor, b?.borderTapColor, t),
    );
  }

  const MyoroButtonStyle({
    this.backgroundIdleColor,
    this.backgroundHoverColor,
    this.backgroundTapColor,
    this.disabledBackgroundColor,
    this.contentIdleColor,
    this.contentHoverColor,
    this.contentTapColor,
    this.borderWidth,
    this.borderRadius,
    this.borderIdleColor,
    this.borderHoverColor,
    this.borderTapColor,
  });

  MyoroButtonStyle.fake()
    : backgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      disabledBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null;

  /// [MyoroTapStatusEnum.idle]'s background [Color].
  final Color? backgroundIdleColor;

  /// [MyoroTapStatusEnum.hover]'s background [Color].
  final Color? backgroundHoverColor;

  /// [MyoroTapStatusEnum.tap]'s background [Color].
  final Color? backgroundTapColor;

  /// Disabled background [Color].
  final Color? disabledBackgroundColor;

  /// [MyoroTapStatusEnum.idle]'s content [Color].
  final Color? contentIdleColor;

  /// [MyoroTapStatusEnum.hover]'s content [Color].
  final Color? contentHoverColor;

  /// [MyoroTapStatusEnum.tap]'s content [Color].
  final Color? contentTapColor;

  /// Border width.
  final double? borderWidth;

  /// [MyoroTapStatusEnum.idle]'s border [Color].
  final Color? borderIdleColor;

  /// [MyoroTapStatusEnum.hover]'s border [Color].
  final Color? borderHoverColor;

  /// [MyoroTapStatusEnum.tap]'s border [Color].
  final Color? borderTapColor;

  /// Border radius.
  final BorderRadius? borderRadius;
}
