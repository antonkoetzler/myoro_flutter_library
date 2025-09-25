import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_style.g.dart';

/// Style model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonStyle with _$MyoroButtonStyleMixin {
  const MyoroButtonStyle({
    this.backgroundIdleColor,
    this.backgroundHoverColor,
    this.backgroundTapColor,
    this.contentIdleColor,
    this.contentHoverColor,
    this.contentTapColor,
    this.borderWidth,
    this.borderRadius,
    this.borderIdleColor,
    this.borderHoverColor,
    this.borderTapColor,
  });

  // coverage:ignore-start
  MyoroButtonStyle.fake()
    : backgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null;
  // coverage:ignore-end

  /// [MyoroTapStatusEnum.idle]'s background [Color].
  final Color? backgroundIdleColor;

  /// [MyoroTapStatusEnum.hover]'s background [Color].
  final Color? backgroundHoverColor;

  /// [MyoroTapStatusEnum.tap]'s background [Color].
  final Color? backgroundTapColor;

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
