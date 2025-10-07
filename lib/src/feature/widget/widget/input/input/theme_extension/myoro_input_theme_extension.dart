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
      cursorHeight = kMyoroMultiplier * 5,
      contentPadding = const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5),
      disabledOpacity = 0.5,
      inputTextStyle = textTheme.bodyMedium!,
      labelTextStyle = textTheme.headlineMedium!,
      labelBehavior = FloatingLabelBehavior.always,
      spacing = kMyoroMultiplier * 2.5,
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
  MyoroInputThemeExtension lerp(covariant MyoroInputThemeExtension? other, double t) {
    if (other is! MyoroInputThemeExtension) return this;
    final style = MyoroInputStyle.lerp(this, other, t);
    return MyoroInputThemeExtension(
      border: style.border,
      underlinedBorder: style.underlinedBorder,
      outlinedBorder: style.outlinedBorder,
      noneBorder: style.noneBorder,
      primaryColor: style.primaryColor,
      errorBorderColor: style.errorBorderColor,
      cursorHeight: style.cursorHeight,
      contentPadding: style.contentPadding,
      disabledOpacity: style.disabledOpacity,
      inputTextStyle: style.inputTextStyle,
      spacing: style.spacing,
      labelTextStyle: style.labelTextStyle,
      labelBehavior: style.labelBehavior,
      clearTextButtonPadding: style.clearTextButtonPadding,
      clearTextButtonIcon: style.clearTextButtonIcon,
      clearTextButtonIconSize: style.clearTextButtonIconSize,
    );
  }
}
