import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroInput].
@immutable
@myoroThemeExtension
class MyoroInputThemeExtension extends ThemeExtension<MyoroInputThemeExtension> with _$MyoroInputThemeExtensionMixin {
  const MyoroInputThemeExtension({
    required this.underlinedBorder,
    required this.outlinedBorder,
    required this.noneBorder,
    required this.primaryColor,
    required this.errorBorderColor,
    required this.cursorHeight,
    required this.contentPadding,
    required this.disabledOpacity,
    required this.inputTextStyle,
    required this.spacing,
    required this.labelTextStyle,
    required this.labelBehavior,
    required this.clearTextButtonPadding,
    required this.clearTextButtonIcon,
  });

  MyoroInputThemeExtension.fake()
    : underlinedBorder = myoroFake<UnderlineInputBorder>(),
      outlinedBorder = myoroFake<OutlineInputBorder>(),
      noneBorder = myoroFake<InputBorder>(),
      primaryColor = myoroFake<Color>(),
      errorBorderColor = myoroFake<Color>(),
      cursorHeight = faker.randomGenerator.decimal(),
      contentPadding = myoroFake<EdgeInsets>(),
      disabledOpacity = faker.randomGenerator.decimal(),
      inputTextStyle = myoroFake<TextStyle>(),
      spacing = faker.randomGenerator.decimal(),
      labelTextStyle = myoroFake<TextStyle>(),
      labelBehavior = myoroFake<FloatingLabelBehavior>(),
      clearTextButtonPadding = myoroFake<EdgeInsets>(),
      clearTextButtonIcon = myoroFake<IconData>();

  MyoroInputThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : underlinedBorder = UnderlineInputBorder(
        borderSide: BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      ),
      outlinedBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
        borderSide: BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      ),
      noneBorder = InputBorder.none,
      primaryColor = colorScheme.primary,
      errorBorderColor = colorScheme.error,
      cursorHeight = 20,
      contentPadding = const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5),
      disabledOpacity = 0.5,
      inputTextStyle = textTheme.bodyMedium!,
      labelTextStyle = textTheme.headlineSmall!,
      labelBehavior = FloatingLabelBehavior.always,
      spacing = 10,
      clearTextButtonPadding = const EdgeInsets.fromLTRB(5, 5, 6.5, 5),
      clearTextButtonIcon = Icons.close;

  @override
  MyoroInputThemeExtension lerp(covariant ThemeExtension<MyoroInputThemeExtension>? other, double t) {
    if (other is! MyoroInputThemeExtension) return this;
    return copyWith(
      underlinedBorder: myoroLerp(underlinedBorder, other.underlinedBorder, t),
      outlinedBorder: myoroLerp(outlinedBorder, other.outlinedBorder, t),
      noneBorder: myoroLerp(noneBorder, other.noneBorder, t),
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      errorBorderColor: Color.lerp(errorBorderColor, other.errorBorderColor, t),
      cursorHeight: lerpDouble(cursorHeight, other.cursorHeight, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      disabledOpacity: lerpDouble(disabledOpacity, other.disabledOpacity, t),
      inputTextStyle: TextStyle.lerp(inputTextStyle, other.inputTextStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      labelBehavior: myoroLerp(labelBehavior, other.labelBehavior, t),
      clearTextButtonPadding: EdgeInsets.lerp(clearTextButtonPadding, other.clearTextButtonPadding, t),
      clearTextButtonIcon: myoroLerp(clearTextButtonIcon, other.clearTextButtonIcon, t),
    );
  }

  /// Border for [MyoroInputStyleEnum.underlined].
  final UnderlineInputBorder underlinedBorder;

  /// Border for [MyoroInputStyleEnum.outlined].
  final OutlineInputBorder outlinedBorder;

  /// Border of [MyoroInputStyleEnum.none].
  final InputBorder noneBorder;

  /// Background color of the input.
  final Color primaryColor;

  /// Color of the border when said input's [validation] function returns an error.
  final Color errorBorderColor;

  /// Height of the selection cursor.
  final double cursorHeight;

  /// [InputDecoration.contentPadding]
  final EdgeInsets contentPadding;

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
}
