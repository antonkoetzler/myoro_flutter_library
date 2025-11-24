import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_currency_input_style.g.dart';

/// Style model of [MyoroCurrencyInput].
@immutable
@myoroModel
class MyoroCurrencyInputStyle extends MyoroInputStyle with _$MyoroCurrencyInputStyleMixin {
  /// Lerp function.
  static MyoroCurrencyInputStyle lerp(MyoroCurrencyInputStyle? a, MyoroCurrencyInputStyle? b, double t) {
    return MyoroCurrencyInputStyle(
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
      currencySymbolButtonStyle: MyoroIconTextButtonStyle.lerp(
        a?.currencySymbolButtonStyle,
        b?.currencySymbolButtonStyle,
        t,
      ),
      currencyPrefixPadding: EdgeInsets.lerp(a?.currencyPrefixPadding, b?.currencyPrefixPadding, t),
    );
  }

  /// Default constructor.
  const MyoroCurrencyInputStyle({
    super.border,
    super.underlinedBorder,
    super.outlinedBorder,
    super.noneBorder,
    super.primaryColor,
    super.errorBorderColor,
    super.cursorHeight,
    super.contentPadding,
    super.disabledOpacity,
    super.inputTextStyle,
    super.spacing,
    super.labelTextStyle,
    super.labelBehavior,
    super.suffixButtonMargin,
    super.clearTextButtonIcon,
    super.obscureTextButtonEnabledIcon,
    super.obscureTextButtonDisabledIcon,
    super.suffixIconConstraints,
    super.prefixIconConstraints,
    super.suffixButtonStyle,
    this.currencySymbolButtonStyle,
    this.currencyPrefixPadding,
  });

  /// [MyoroIconTextButtonStyle] of the currency prefix [Widget].
  final MyoroIconTextButtonStyle? currencySymbolButtonStyle;

  /// [EdgeInsets] padding for the currency prefix [Widget].
  final EdgeInsets? currencyPrefixPadding;

  /// Fake constructor.
  factory MyoroCurrencyInputStyle.fake() {
    return MyoroCurrencyInputStyle(
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
      prefixIconConstraints: myoroNullableFake<BoxConstraints>(),
      suffixButtonStyle: myoroNullableFake<MyoroIconTextButtonStyle>(),
      currencySymbolButtonStyle: myoroNullableFake<MyoroIconTextButtonStyle>(),
      currencyPrefixPadding: myoroFake<EdgeInsets>(),
    );
  }
}
