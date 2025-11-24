import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_style.g.dart';

/// Style model of [MyoroInput].
@immutable
@myoroModel
class MyoroInputStyle with _$MyoroInputStyleMixin {
  /// Lerp function.
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
      suffixButtonMargin: EdgeInsets.lerp(a?.suffixButtonMargin, b?.suffixButtonMargin, t),
      clearTextButtonIcon: myoroFallbackLerp(a?.clearTextButtonIcon, b?.clearTextButtonIcon, t),
      obscureTextButtonEnabledIcon: myoroFallbackLerp(
        a?.obscureTextButtonEnabledIcon,
        b?.obscureTextButtonEnabledIcon,
        t,
      ),
      obscureTextButtonDisabledIcon: myoroFallbackLerp(
        a?.obscureTextButtonDisabledIcon,
        b?.obscureTextButtonDisabledIcon,
        t,
      ),
      suffixIconConstraints: myoroFallbackLerp(a?.suffixIconConstraints, b?.suffixIconConstraints, t),
      prefixIconConstraints: myoroFallbackLerp(a?.prefixIconConstraints, b?.prefixIconConstraints, t),
      suffixButtonStyle: MyoroIconTextButtonStyle.lerp(a?.suffixButtonStyle, b?.suffixButtonStyle, t),
    );
  }

  /// Default constructor.
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
    this.suffixButtonMargin,
    this.clearTextButtonIcon,
    this.obscureTextButtonEnabledIcon,
    this.obscureTextButtonDisabledIcon,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.suffixButtonStyle,
  });

  /// Fake constructor.
  factory MyoroInputStyle.fake() {
    return MyoroInputStyle(
      border: myoroNullableFake<InputBorder>(),
      underlinedBorder: myoroNullableFake<UnderlineInputBorder>(),
      outlinedBorder: myoroNullableFake<OutlineInputBorder>(),
      noneBorder: myoroNullableFake<InputBorder>(),
      primaryColor: myoroNullableFake<Color>(),
      errorBorderColor: myoroNullableFake<Color>(),
      cursorHeight: myoroNullableFake<double>(),
      contentPadding: myoroNullableFake<EdgeInsets>(),
      disabledOpacity: myoroNullableFake<double>(),
      inputTextStyle: myoroNullableFake<TextStyle>(),
      spacing: myoroNullableFake<double>(),
      labelTextStyle: myoroNullableFake<TextStyle>(),
      labelBehavior: myoroNullableFake<FloatingLabelBehavior>(),
      suffixButtonMargin: myoroNullableFake<EdgeInsets>(),
      clearTextButtonIcon: myoroNullableFake<IconData>(),
      obscureTextButtonEnabledIcon: myoroNullableFake<IconData>(),
      obscureTextButtonDisabledIcon: myoroNullableFake<IconData>(),
      suffixIconConstraints: myoroNullableFake<BoxConstraints>(),
      suffixButtonStyle: myoroNullableFake<MyoroIconTextButtonStyle>(),
    );
  }

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

  /// Text style of the label.
  final TextStyle? labelTextStyle;

  /// [TextFormField.floatingLabelBehavior]. Used so the label will stay at the top of the
  final FloatingLabelBehavior? labelBehavior;

  /// Margin of the suffix button.
  final EdgeInsets? suffixButtonMargin;

  /// [IconData] of the clear text button.
  final IconData? clearTextButtonIcon;

  /// [IconData] of the obscure text button.
  final IconData? obscureTextButtonEnabledIcon;

  /// [IconData] of the obscure text button when it is disabled.
  final IconData? obscureTextButtonDisabledIcon;

  /// [BoxConstraints] of the suffix icon.
  final BoxConstraints? suffixIconConstraints;

  /// [BoxConstraints] of the prefix icon.
  final BoxConstraints? prefixIconConstraints;

  /// [MyoroIconTextButtonStyle] of the suffix button.
  final MyoroIconTextButtonStyle? suffixButtonStyle;
}
