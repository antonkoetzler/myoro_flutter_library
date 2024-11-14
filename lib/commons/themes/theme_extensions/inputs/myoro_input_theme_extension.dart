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

  /// Spacing between the checkbox and input.
  final double checkboxSpacing;

  /// Text style of the input.
  final TextStyle inputTextStyle;

  /// Text style of [_Label].
  final TextStyle labelTextStyle;

  /// Spacing between the label & the input.
  final double labelSpacing;

  const MyoroInputThemeExtension({
    required this.underlinedBorder,
    required this.outlinedBorder,
    required this.contentPadding,
    required this.isDense,
    required this.cursorHeight,
    required this.checkboxSpacing,
    required this.inputTextStyle,
    required this.labelTextStyle,
    required this.labelSpacing,
  });

  @override
  MyoroInputThemeExtension copyWith({
    InputBorder? underlinedBorder,
    InputBorder? outlinedBorder,
    EdgeInsets? contentPadding,
    bool? isDense,
    double? cursorHeight,
    double? checkboxSpacing,
    TextStyle? inputTextStyle,
    TextStyle? labelTextStyle,
    double? labelSpacing,
  }) {
    return MyoroInputThemeExtension(
      underlinedBorder: underlinedBorder ?? this.underlinedBorder,
      outlinedBorder: outlinedBorder ?? this.outlinedBorder,
      contentPadding: contentPadding ?? this.contentPadding,
      isDense: isDense ?? this.isDense,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      checkboxSpacing: checkboxSpacing ?? this.checkboxSpacing,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      labelSpacing: labelSpacing ?? this.labelSpacing,
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
      checkboxSpacing: lerpDouble(checkboxSpacing, other.checkboxSpacing, t),
      inputTextStyle: TextStyle.lerp(inputTextStyle, other.inputTextStyle, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      labelSpacing: lerpDouble(labelSpacing, other.labelSpacing, t),
    );
  }
}
