import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_radio_style.g.dart';

/// Style model of [MyoroRadio].
@immutable
@myoroModel
class MyoroRadioStyle with _$MyoroRadioStyleMixin {
  const MyoroRadioStyle({this.activeColor, this.hoverColor, this.labelTextStyle, this.spacing, this.splashRadius});

  // coverage:ignore-start
  factory MyoroRadioStyle.fake() {
    return MyoroRadioStyle(
      activeColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      hoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      splashRadius: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

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

  /// Copy with.
  MyoroRadioStyle copyWith({
    Color? activeColor,
    bool activeColorProvided = true,
    Color? hoverColor,
    bool hoverColorProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    double? spacing,
    bool spacingProvided = true,
    double? splashRadius,
    bool splashRadiusProvided = true,
  }) {
    return MyoroRadioStyle(
      activeColor: activeColorProvided ? (activeColor ?? this.activeColor) : null,
      hoverColor: hoverColorProvided ? (hoverColor ?? this.hoverColor) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      splashRadius: splashRadiusProvided ? (splashRadius ?? this.splashRadius) : null,
    );
  }
}
