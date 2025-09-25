import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroInput].
@immutable
@myoroThemeExtension
class MyoroInputThemeExtension extends ThemeExtension<MyoroInputThemeExtension>
    with _$MyoroInputThemeExtensionMixin
    implements MyoroInputStyle {
  const MyoroInputThemeExtension({
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
  MyoroInputThemeExtension.fake()
    : border = faker.randomGenerator.boolean() ? myoroFake<InputBorder>() : null,
      underlinedBorder = faker.randomGenerator.boolean() ? myoroFake<UnderlineInputBorder>() : null,
      outlinedBorder = faker.randomGenerator.boolean() ? myoroFake<OutlineInputBorder>() : null,
      noneBorder = faker.randomGenerator.boolean() ? myoroFake<InputBorder>() : null,
      primaryColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      errorBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      cursorHeight = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      contentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      disabledOpacity = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      inputTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelBehavior = faker.randomGenerator.boolean() ? myoroFake<FloatingLabelBehavior>() : null,
      clearTextButtonPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      clearTextButtonIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      clearTextButtonIconSize = faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal(scale: 200, min: 20)
          : null;
  // coverage:ignore-end

  MyoroInputThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : border = null,
      underlinedBorder = UnderlineInputBorder(
        borderSide: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      outlinedBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
        borderSide: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      noneBorder = InputBorder.none,
      primaryColor = colorScheme.primary,
      errorBorderColor = colorScheme.error,
      cursorHeight = 20,
      contentPadding = const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5),
      disabledOpacity = 0.5,
      inputTextStyle = textTheme.bodyMedium!,
      labelTextStyle = textTheme.headlineMedium!,
      labelBehavior = FloatingLabelBehavior.always,
      spacing = 10,
      clearTextButtonPadding = const EdgeInsets.fromLTRB(5, 5, 6.5, 5),
      clearTextButtonIcon = Icons.close,
      clearTextButtonIconSize = kMyoroMultiplier * 4;

  /// Custom border.
  @override
  final InputBorder? border;

  /// Border for [MyoroInputStyleEnum.underlined].
  @override
  final UnderlineInputBorder? underlinedBorder;

  /// Border for [MyoroInputStyleEnum.outlined].
  @override
  final OutlineInputBorder? outlinedBorder;

  /// Border of [MyoroInputStyleEnum.none].
  @override
  final InputBorder? noneBorder;

  /// Background color of the input.
  @override
  final Color? primaryColor;

  /// Color of the border when said input's [validation] function returns an error.
  @override
  final Color? errorBorderColor;

  /// Height of the selection cursor.
  @override
  final double? cursorHeight;

  /// [InputDecoration.contentPadding]
  @override
  final EdgeInsets? contentPadding;

  /// Opacity applied when the input is disabled.
  @override
  final double? disabledOpacity;

  /// Text style of the input.
  @override
  final TextStyle? inputTextStyle;

  /// Spacing between the input and the prefix/suffix widgets.
  @override
  final double? spacing;

  /// Text style of [_Label].
  @override
  final TextStyle? labelTextStyle;

  /// [TextFormField.floatingLabelBehavior]. Used so the label will stay at the top of the
  @override
  final FloatingLabelBehavior? labelBehavior;

  /// Padding of [_ClearTextButton].
  @override
  final EdgeInsets? clearTextButtonPadding;

  /// [IconData] of [_ClearTextButton].
  @override
  final IconData? clearTextButtonIcon;

  /// Size of [clearTextButtonIcon].
  @override
  final double? clearTextButtonIconSize;

  @override
  MyoroInputThemeExtension lerp(covariant ThemeExtension<MyoroInputThemeExtension>? other, double t) {
    if (other is! MyoroInputThemeExtension) return this;

    final underlinedBorder = myoroFallbackLerp(this.underlinedBorder, other.underlinedBorder, t);
    final outlinedBorder = myoroFallbackLerp(this.outlinedBorder, other.outlinedBorder, t);
    final noneBorder = myoroFallbackLerp(this.noneBorder, other.noneBorder, t);
    final primaryColor = Color.lerp(this.primaryColor, other.primaryColor, t);
    final errorBorderColor = Color.lerp(this.errorBorderColor, other.errorBorderColor, t);
    final cursorHeight = lerpDouble(this.cursorHeight, other.cursorHeight, t);
    final contentPadding = EdgeInsets.lerp(this.contentPadding, other.contentPadding, t);
    final disabledOpacity = lerpDouble(this.disabledOpacity, other.disabledOpacity, t);
    final inputTextStyle = TextStyle.lerp(this.inputTextStyle, other.inputTextStyle, t);
    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final labelTextStyle = TextStyle.lerp(this.labelTextStyle, other.labelTextStyle, t);
    final labelBehavior = myoroFallbackLerp(this.labelBehavior, other.labelBehavior, t);
    final clearTextButtonPadding = EdgeInsets.lerp(this.clearTextButtonPadding, other.clearTextButtonPadding, t);
    final clearTextButtonIcon = myoroFallbackLerp(this.clearTextButtonIcon, other.clearTextButtonIcon, t);
    final clearTextButtonIconSize = lerpDouble(this.clearTextButtonIconSize, other.clearTextButtonIconSize, t);

    return copyWith(
      underlinedBorder: underlinedBorder,
      underlinedBorderProvided: underlinedBorder != null,
      outlinedBorder: outlinedBorder,
      outlinedBorderProvided: outlinedBorder != null,
      noneBorder: noneBorder,
      noneBorderProvided: noneBorder != null,
      primaryColor: primaryColor,
      primaryColorProvided: primaryColor != null,
      errorBorderColor: errorBorderColor,
      errorBorderColorProvided: errorBorderColor != null,
      cursorHeight: cursorHeight,
      cursorHeightProvided: cursorHeight != null,
      contentPadding: contentPadding,
      contentPaddingProvided: contentPadding != null,
      disabledOpacity: disabledOpacity,
      disabledOpacityProvided: disabledOpacity != null,
      inputTextStyle: inputTextStyle,
      inputTextStyleProvided: inputTextStyle != null,
      spacing: spacing,
      spacingProvided: spacing != null,
      labelTextStyle: labelTextStyle,
      labelTextStyleProvided: labelTextStyle != null,
      labelBehavior: labelBehavior,
      labelBehaviorProvided: labelBehavior != null,
      clearTextButtonPadding: clearTextButtonPadding,
      clearTextButtonPaddingProvided: clearTextButtonPadding != null,
      clearTextButtonIcon: clearTextButtonIcon,
      clearTextButtonIconProvided: clearTextButtonIcon != null,
      clearTextButtonIconSize: clearTextButtonIconSize,
      clearTextButtonIconSizeProvided: clearTextButtonIconSize != null,
    );
  }
}
