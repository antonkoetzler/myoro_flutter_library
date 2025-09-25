import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_style.g.dart';

/// Style model of [MyoroIconTextButton].
@immutable
@myoroModel
class MyoroIconTextButtonStyle extends MyoroButtonStyle with _$MyoroIconTextButtonStyleMixin {
  const MyoroIconTextButtonStyle({
    super.backgroundIdleColor,
    super.backgroundHoverColor,
    super.backgroundTapColor,
    super.contentIdleColor,
    super.contentHoverColor,
    super.contentTapColor,
    super.borderWidth,
    super.borderRadius,
    super.borderIdleColor,
    super.borderHoverColor,
    super.borderTapColor,
    this.contentPadding,
    this.spacing,
  });

  // coverage:ignore-start
  factory MyoroIconTextButtonStyle.fake() {
    return MyoroIconTextButtonStyle(
      backgroundIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
    );
  }
  // coverage:ignore-end

  /// [EdgeInsets] of the button.
  final EdgeInsets? contentPadding;

  /// Spacing between the icon and text.
  final double? spacing;

  @override
  MyoroIconTextButtonStyle copyWith({
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
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroIconTextButtonStyle(
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
      contentPadding: contentPaddingProvided ? (contentPadding ?? this.contentPadding) : null,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
    );
  }
}
