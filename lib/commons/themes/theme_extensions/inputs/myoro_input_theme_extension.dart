import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroInput].
final class MyoroInputThemeExtension extends ThemeExtension<MyoroInputThemeExtension> {
  /// Border for [MyoroInputStyleEnum.underlined].
  final InputBorder underlinedBorder;

  /// Border for [MyoroInputStyleEnum.outlined].
  final InputBorder outlinedBorder;

  /// Background color of the input.
  final Color primaryColor;

  /// Color of the border when said input's [validation] function returns an error.
  final Color errorBorderColor;

  /// Border radius of the [Container] storing the background color.
  final BorderRadius borderRadius;

  /// If [TextFormField.decoration.isDense] is enabled.
  final bool isDense;

  /// Height of the selection cursor.
  final double cursorHeight;

  /// Opacity applied when the input is disabled.
  final double disabledOpacity;

  /// Text style of the input.
  final TextStyle inputTextStyle;

  /// Spacing between the input and the prefix/suffix widgets.
  final double spacing;

  /// Text style of [_Label].
  final TextStyle labelTextStyle;

  /// Padding of [_ClearTextButton].
  final EdgeInsets clearTextButtonPadding;

  /// [IconData] of [_ClearTextButton].
  final IconData clearTextButtonIcon;

  const MyoroInputThemeExtension({
    required this.underlinedBorder,
    required this.outlinedBorder,
    required this.primaryColor,
    required this.errorBorderColor,
    required this.borderRadius,
    required this.isDense,
    required this.cursorHeight,
    required this.disabledOpacity,
    required this.inputTextStyle,
    required this.spacing,
    required this.labelTextStyle,
    required this.clearTextButtonPadding,
    required this.clearTextButtonIcon,
  });

  @override
  MyoroInputThemeExtension copyWith({
    InputBorder? underlinedBorder,
    InputBorder? outlinedBorder,
    Color? primaryColor,
    Color? errorBorderColor,
    BorderRadius? borderRadius,
    bool? isDense,
    double? cursorHeight,
    double? disabledOpacity,
    TextStyle? inputTextStyle,
    double? spacing,
    TextStyle? labelTextStyle,
    EdgeInsets? clearTextButtonPadding,
    IconData? clearTextButtonIcon,
  }) {
    return MyoroInputThemeExtension(
      underlinedBorder: underlinedBorder ?? this.underlinedBorder,
      outlinedBorder: outlinedBorder ?? this.outlinedBorder,
      primaryColor: primaryColor ?? this.primaryColor,
      errorBorderColor: errorBorderColor ?? this.errorBorderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      isDense: isDense ?? this.isDense,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      spacing: spacing ?? this.spacing,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      clearTextButtonPadding: clearTextButtonPadding ?? this.clearTextButtonPadding,
      clearTextButtonIcon: clearTextButtonIcon ?? this.clearTextButtonIcon,
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
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      errorBorderColor: Color.lerp(errorBorderColor, other.errorBorderColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      isDense: MyoroLerpHelper.lerp(isDense, other.isDense, t),
      cursorHeight: lerpDouble(cursorHeight, other.cursorHeight, t),
      disabledOpacity: lerpDouble(disabledOpacity, other.disabledOpacity, t),
      inputTextStyle: TextStyle.lerp(inputTextStyle, other.inputTextStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      clearTextButtonPadding: EdgeInsets.lerp(clearTextButtonPadding, other.clearTextButtonPadding, t),
      clearTextButtonIcon: MyoroLerpHelper.lerp(clearTextButtonIcon, other.clearTextButtonIcon, t),
    );
  }
}
