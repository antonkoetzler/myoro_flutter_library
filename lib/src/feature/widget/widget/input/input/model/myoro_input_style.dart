import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_style.g.dart';

/// Style model of [MyoroInput].
@immutable
@myoroModel
class MyoroInputStyle with _$MyoroInputStyleMixin {
  static MyoroInputStyle lerp(MyoroInputStyle? a, MyoroInputStyle? b, double t) {
    return MyoroInputStyle(
      border: myoroFallbackLerp(a?.border, b?.border, t),
      underlinedBorder: myoroFallbackLerp(a?.underlinedBorder, b?.underlinedBorder, t),
      outlinedBorder: myoroFallbackLerp(a?.outlinedBorder, b?.outlinedBorder, t),
      noneBorder: myoroFallbackLerp(a?.noneBorder, b?.noneBorder, t),
      primaryColor: Color.lerp(a?.primaryColor, b?.primaryColor, t),
      errorBorderColor: Color.lerp(a?.errorBorderColor, b?.errorBorderColor, t),
      cursorHeight: lerpDouble(a?.cursorHeight, b?.cursorHeight, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
      disabledOpacity: lerpDouble(a?.disabledOpacity, b?.disabledOpacity, t),
      inputTextStyle: TextStyle.lerp(a?.inputTextStyle, b?.inputTextStyle, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      labelTextStyle: TextStyle.lerp(a?.labelTextStyle, b?.labelTextStyle, t),
      labelBehavior: myoroFallbackLerp(a?.labelBehavior, b?.labelBehavior, t),
      clearTextButtonPadding: EdgeInsets.lerp(a?.clearTextButtonPadding, b?.clearTextButtonPadding, t),
      clearTextButtonIcon: myoroFallbackLerp(a?.clearTextButtonIcon, b?.clearTextButtonIcon, t),
      clearTextButtonIconSize: lerpDouble(a?.clearTextButtonIconSize, b?.clearTextButtonIconSize, t),
    );
  }

  const MyoroInputStyle({
    this.border,
    this.underlinedBorder,
    this.outlinedBorder,
    this.noneBorder,
    this.primaryColor,
    this.errorBorderColor,
    this.cursorHeight,
    this.contentPadding,
    this.disabledOpacity,
    this.inputTextStyle,
    this.spacing,
    this.labelTextStyle,
    this.labelBehavior,
    this.clearTextButtonPadding,
    this.clearTextButtonIcon,
    this.clearTextButtonIconSize,
  });

  // coverage:ignore-start
  factory MyoroInputStyle.fake() {
    return MyoroInputStyle(
      border: faker.randomGenerator.boolean() ? myoroFake<InputBorder>() : null,
      underlinedBorder: faker.randomGenerator.boolean() ? myoroFake<UnderlineInputBorder>() : null,
      outlinedBorder: faker.randomGenerator.boolean() ? myoroFake<OutlineInputBorder>() : null,
      noneBorder: faker.randomGenerator.boolean() ? myoroFake<InputBorder>() : null,
      primaryColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      errorBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      cursorHeight: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      contentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      disabledOpacity: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      inputTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelBehavior: faker.randomGenerator.boolean() ? myoroFake<FloatingLabelBehavior>() : null,
      clearTextButtonPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      clearTextButtonIcon: faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      clearTextButtonIconSize: faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal(scale: 200, min: 20)
          : null,
    );
  }
  // coverage:ignore-end

  /// Custom border.
  final InputBorder? border;

  /// Border for [MyoroInputStyleEnum.underlined].
  final UnderlineInputBorder? underlinedBorder;

  /// Border for [MyoroInputStyleEnum.outlined].
  final OutlineInputBorder? outlinedBorder;

  /// Border of [MyoroInputStyleEnum.none].
  final InputBorder? noneBorder;

  /// Background color of the input.
  final Color? primaryColor;

  /// Color of the border when said input's [validation] function returns an error.
  final Color? errorBorderColor;

  /// Height of the selection cursor.
  final double? cursorHeight;

  /// [InputDecoration.contentPadding]
  final EdgeInsets? contentPadding;

  /// Opacity applied when the input is disabled.
  final double? disabledOpacity;

  /// Text style of the input.
  final TextStyle? inputTextStyle;

  /// Spacing between the input and the prefix/suffix widgets.
  final double? spacing;

  /// Text style of [_Label].
  final TextStyle? labelTextStyle;

  /// [TextFormField.floatingLabelBehavior]. Used so the label will stay at the top of the
  final FloatingLabelBehavior? labelBehavior;

  /// Padding of [_ClearTextButton].
  final EdgeInsets? clearTextButtonPadding;

  /// [IconData] of [_ClearTextButton].
  final IconData? clearTextButtonIcon;

  /// Size of [clearTextButtonIcon].
  final double? clearTextButtonIconSize;

  /// Copy with.
}
