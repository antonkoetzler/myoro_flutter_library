import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroInput].
final class MyoroInputThemeExtension extends ThemeExtension<MyoroInputThemeExtension> {
  /// Border for [MyoroInputStyleEnum.underlined].
  final InputBorder underlinedBorder;

  /// Border for [MyoroInputStyleEnum.outlined].
  final InputBorder outlinedBorder;

  /// Padding of the text in the input.
  final EdgeInsets contentPadding;

  /// If [TextFormField.decoration.isDense] is enabled.
  final bool isDense;

  /// Height of the selection cursor.
  final double cursorHeight;

  /// Opacity applied when the input is disabled.
  final double disabledOpacity;

  /// Text style of the input.
  final TextStyle inputTextStyle;

  /// Offset of [TextFormField.prefixIcon] so icons dont clip a [MyoroInputStyleEnum.outlined]'s border.
  final double prefixIconOffset;

  /// Text style of [_Label].
  final TextStyle labelTextStyle;

  const MyoroInputThemeExtension({
    required this.underlinedBorder,
    required this.outlinedBorder,
    required this.contentPadding,
    required this.isDense,
    required this.cursorHeight,
    required this.disabledOpacity,
    required this.inputTextStyle,
    required this.prefixIconOffset,
    required this.labelTextStyle,
  });

  @override
  MyoroInputThemeExtension copyWith({
    InputBorder? underlinedBorder,
    InputBorder? outlinedBorder,
    EdgeInsets? contentPadding,
    bool? isDense,
    double? cursorHeight,
    double? disabledOpacity,
    TextStyle? inputTextStyle,
    double? prefixIconOffset,
    TextStyle? labelTextStyle,
  }) {
    return MyoroInputThemeExtension(
      underlinedBorder: underlinedBorder ?? this.underlinedBorder,
      outlinedBorder: outlinedBorder ?? this.outlinedBorder,
      contentPadding: contentPadding ?? this.contentPadding,
      isDense: isDense ?? this.isDense,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      prefixIconOffset: prefixIconOffset ?? this.prefixIconOffset,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroInputThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputThemeExtension) return this;
    return copyWith(
      underlinedBorder: MyoroLerpHelper.lerp(underlinedBorder, other.underlinedBorder, t),
      outlinedBorder: MyoroLerpHelper.lerp(outlinedBorder, other.outlinedBorder, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      isDense: MyoroLerpHelper.lerp(isDense, other.isDense, t),
      cursorHeight: lerpDouble(cursorHeight, other.cursorHeight, t),
      disabledOpacity: lerpDouble(disabledOpacity, other.disabledOpacity, t),
      inputTextStyle: TextStyle.lerp(inputTextStyle, other.inputTextStyle, t),
      prefixIconOffset: lerpDouble(prefixIconOffset, other.prefixIconOffset, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
    );
  }
}
