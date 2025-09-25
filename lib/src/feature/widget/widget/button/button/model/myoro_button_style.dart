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

  /// Copy with.
  MyoroButtonStyle copyWith({
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
    Color? contentIdleColor,
    bool contentIdleColorProvided = true,
    Color? contentHoverColor,
    bool contentHoverColorProvided = true,
    Color? contentTapColor,
    bool contentTapColorProvided = true,
    double? borderWidth,
    bool borderWidthProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
  }) {
    return MyoroButtonStyle(
      backgroundIdleColor: backgroundIdleColorProvided ? (backgroundIdleColor ?? this.backgroundIdleColor) : null,
      backgroundHoverColor: backgroundHoverColorProvided ? (backgroundHoverColor ?? this.backgroundHoverColor) : null,
      backgroundTapColor: backgroundTapColorProvided ? (backgroundTapColor ?? this.backgroundTapColor) : null,
      contentIdleColor: contentIdleColorProvided ? (contentIdleColor ?? this.contentIdleColor) : null,
      contentHoverColor: contentHoverColorProvided ? (contentHoverColor ?? this.contentHoverColor) : null,
      contentTapColor: contentTapColorProvided ? (contentTapColor ?? this.contentTapColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? this.borderWidth) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      borderIdleColor: borderIdleColorProvided ? (borderIdleColor ?? this.borderIdleColor) : null,
      borderHoverColor: borderHoverColorProvided ? (borderHoverColor ?? this.borderHoverColor) : null,
      borderTapColor: borderTapColorProvided ? (borderTapColor ?? this.borderTapColor) : null,
    );
  }
}
