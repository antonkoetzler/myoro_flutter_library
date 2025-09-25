import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_style.g.dart';

/// Style model of [MyoroInput].
@immutable
@myoroModel
class MyoroInputStyle with _$MyoroInputStyleMixin {
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
  MyoroInputStyle copyWith({
    InputBorder? border,
    bool borderProvided = true,
    UnderlineInputBorder? underlinedBorder,
    bool underlinedBorderProvided = true,
    OutlineInputBorder? outlinedBorder,
    bool outlinedBorderProvided = true,
    InputBorder? noneBorder,
    bool noneBorderProvided = true,
    Color? primaryColor,
    bool primaryColorProvided = true,
    Color? errorBorderColor,
    bool errorBorderColorProvided = true,
    double? cursorHeight,
    bool cursorHeightProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    double? disabledOpacity,
    bool disabledOpacityProvided = true,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    FloatingLabelBehavior? labelBehavior,
    bool labelBehaviorProvided = true,
    EdgeInsets? clearTextButtonPadding,
    bool clearTextButtonPaddingProvided = true,
    IconData? clearTextButtonIcon,
    bool clearTextButtonIconProvided = true,
    double? clearTextButtonIconSize,
    bool clearTextButtonIconSizeProvided = true,
  }) {
    return MyoroInputStyle(
      border: borderProvided ? (border ?? this.border) : null,
      underlinedBorder: underlinedBorderProvided ? (underlinedBorder ?? this.underlinedBorder) : null,
      outlinedBorder: outlinedBorderProvided ? (outlinedBorder ?? this.outlinedBorder) : null,
      noneBorder: noneBorderProvided ? (noneBorder ?? this.noneBorder) : null,
      primaryColor: primaryColorProvided ? (primaryColor ?? this.primaryColor) : null,
      errorBorderColor: errorBorderColorProvided ? (errorBorderColor ?? this.errorBorderColor) : null,
      cursorHeight: cursorHeightProvided ? (cursorHeight ?? this.cursorHeight) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? this.contentPadding) : null,
      disabledOpacity: disabledOpacityProvided ? (disabledOpacity ?? this.disabledOpacity) : null,
      inputTextStyle: inputTextStyleProvided ? (inputTextStyle ?? this.inputTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelBehavior: labelBehaviorProvided ? (labelBehavior ?? this.labelBehavior) : null,
      clearTextButtonPadding: clearTextButtonPaddingProvided
          ? (clearTextButtonPadding ?? this.clearTextButtonPadding)
          : null,
      clearTextButtonIcon: clearTextButtonIconProvided ? (clearTextButtonIcon ?? this.clearTextButtonIcon) : null,
      clearTextButtonIconSize: clearTextButtonIconSizeProvided
          ? (clearTextButtonIconSize ?? this.clearTextButtonIconSize)
          : null,
    );
  }
}
