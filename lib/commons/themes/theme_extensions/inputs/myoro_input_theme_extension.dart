import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroInput].
final class MyoroInputThemeExtension
    extends ThemeExtension<MyoroInputThemeExtension> {
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

  /// [TextFormField.floatingLabelBehavior]. Used so the label will stay at the top of the
  final FloatingLabelBehavior labelBehavior;

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
    required this.labelBehavior,
    required this.clearTextButtonPadding,
    required this.clearTextButtonIcon,
  });

  MyoroInputThemeExtension.fake()
      : underlinedBorder = UnderlineInputBorder(
          borderSide: BorderSide(
            width: faker.randomGenerator.decimal(),
            color: kMyoroTestColors[
                faker.randomGenerator.integer(kMyoroTestColors.length)],
          ),
        ),
        outlinedBorder = OutlineInputBorder(
          borderRadius: MyoroDecorationHelper.inputBorderRadius,
          borderSide: BorderSide(
            width: faker.randomGenerator.decimal(),
            color: kMyoroTestColors[
                faker.randomGenerator.integer(kMyoroTestColors.length)],
          ),
        ),
        primaryColor = kMyoroTestColors[
            faker.randomGenerator.integer(kMyoroTestColors.length)],
        errorBorderColor = kMyoroTestColors[
            faker.randomGenerator.integer(kMyoroTestColors.length)],
        borderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
        isDense = faker.randomGenerator.boolean(),
        cursorHeight = faker.randomGenerator.decimal(),
        disabledOpacity = faker.randomGenerator.decimal(),
        inputTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        spacing = faker.randomGenerator.decimal(),
        labelTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        labelBehavior = FloatingLabelBehavior.values[
            faker.randomGenerator.integer(FloatingLabelBehavior.values.length)],
        clearTextButtonPadding =
            EdgeInsets.all(faker.randomGenerator.decimal()),
        clearTextButtonIcon = kMyoroTestIcons[
            faker.randomGenerator.integer(kMyoroTestIcons.length)];

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
    FloatingLabelBehavior? labelBehavior,
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
      labelBehavior: labelBehavior ?? this.labelBehavior,
      clearTextButtonPadding:
          clearTextButtonPadding ?? this.clearTextButtonPadding,
      clearTextButtonIcon: clearTextButtonIcon ?? this.clearTextButtonIcon,
    );
  }

  @override
  MyoroInputThemeExtension lerp(
    covariant ThemeExtension<MyoroInputThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputThemeExtension) return this;
    return copyWith(
      underlinedBorder: myoroLerp(underlinedBorder, other.underlinedBorder, t),
      outlinedBorder: myoroLerp(outlinedBorder, other.outlinedBorder, t),
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      errorBorderColor: Color.lerp(errorBorderColor, other.errorBorderColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      isDense: myoroLerp(isDense, other.isDense, t),
      cursorHeight: lerpDouble(cursorHeight, other.cursorHeight, t),
      disabledOpacity: lerpDouble(disabledOpacity, other.disabledOpacity, t),
      inputTextStyle: TextStyle.lerp(inputTextStyle, other.inputTextStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      labelBehavior: myoroLerp(labelBehavior, other.labelBehavior, t),
      clearTextButtonPadding: EdgeInsets.lerp(
          clearTextButtonPadding, other.clearTextButtonPadding, t),
      clearTextButtonIcon:
          myoroLerp(clearTextButtonIcon, other.clearTextButtonIcon, t),
    );
  }
}
