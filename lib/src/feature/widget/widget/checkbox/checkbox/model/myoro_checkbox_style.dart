import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_style.g.dart';

/// Style model of [MyoroCheckbox].
@immutable
@myoroModel
class MyoroCheckboxStyle with _$MyoroCheckboxStyleMixin {
  const MyoroCheckboxStyle({
    this.checkboxActiveColor,
    this.checkboxCheckColor,
    this.checkboxHoverColor,
    this.checkboxFocusColor,
    this.checkboxSplashRadius,
    this.labelTextStyle,
    this.labelMaxLines,
    this.spacing,
  });

  // coverage:ignore-start
  MyoroCheckboxStyle.fake()
    : checkboxActiveColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxCheckColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxFocusColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxSplashRadius = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelMaxLines = faker.randomGenerator.boolean() ? faker.randomGenerator.integer(10) : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null;
  // coverage:ignore-end

  /// Background color of the checkbox when selected.
  final Color? checkboxActiveColor;

  /// Color of the checkmark.
  final Color? checkboxCheckColor;

  /// Hover color of the [Checkbox].
  final Color? checkboxHoverColor;

  /// Focus color of the [Checkbox].
  final Color? checkboxFocusColor;

  /// Splash radius when the [Checkbox] is hovered.
  final double? checkboxSplashRadius;

  /// Text style of the label.
  final TextStyle? labelTextStyle;

  /// [Text.maxLines] of the label.
  final int? labelMaxLines;

  /// Spacing between the checkbox and the label.
  final double? spacing;

  MyoroCheckboxStyle copyWith({
    Color? checkboxActiveColor,
    bool checkboxActiveColorProvided = true,
    Color? checkboxCheckColor,
    bool checkboxCheckColorProvided = true,
    Color? checkboxHoverColor,
    bool checkboxHoverColorProvided = true,
    Color? checkboxFocusColor,
    bool checkboxFocusColorProvided = true,
    double? checkboxSplashRadius,
    bool checkboxSplashRadiusProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    int? labelMaxLines,
    bool labelMaxLinesProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroCheckboxStyle(
      checkboxActiveColor: checkboxActiveColorProvided ? (checkboxActiveColor ?? this.checkboxActiveColor) : null,
      checkboxCheckColor: checkboxCheckColorProvided ? (checkboxCheckColor ?? this.checkboxCheckColor) : null,
      checkboxHoverColor: checkboxHoverColorProvided ? (checkboxHoverColor ?? this.checkboxHoverColor) : null,
      checkboxFocusColor: checkboxFocusColorProvided ? (checkboxFocusColor ?? this.checkboxFocusColor) : null,
      checkboxSplashRadius: checkboxSplashRadiusProvided ? (checkboxSplashRadius ?? this.checkboxSplashRadius) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelMaxLines: labelMaxLinesProvided ? (labelMaxLines ?? this.labelMaxLines) : null,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
    );
  }
}
