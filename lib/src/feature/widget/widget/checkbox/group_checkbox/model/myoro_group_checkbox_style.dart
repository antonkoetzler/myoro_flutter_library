import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_style.g.dart';

/// Style model of [MyoroGroupCheckbox].
@immutable
@myoroModel
class MyoroGroupCheckboxStyle extends MyoroCheckboxStyle with _$MyoroGroupCheckboxStyleMixin {
  const MyoroGroupCheckboxStyle({
    super.checkboxActiveColor,
    super.checkboxCheckColor,
    super.checkboxHoverColor,
    super.checkboxFocusColor,
    super.checkboxSplashRadius,
    super.labelTextStyle,
    super.labelMaxLines,
    super.spacing,
    this.runSpacing,
  });

  // coverage:ignore-start
  factory MyoroGroupCheckboxStyle.fake() {
    return MyoroGroupCheckboxStyle(
      checkboxActiveColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxCheckColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxFocusColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxSplashRadius: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelMaxLines: faker.randomGenerator.boolean() ? faker.randomGenerator.integer(10) : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
    );
  }
  // coverage:ignore-end

  /// Cross axis spacing in between each checkbox.
  final double? runSpacing;

  /// Copy with.
  @override
  MyoroGroupCheckboxStyle copyWith({
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
    double? runSpacing,
    bool runSpacingProvided = true,
  }) {
    return MyoroGroupCheckboxStyle(
      checkboxActiveColor: checkboxActiveColorProvided ? (checkboxActiveColor ?? this.checkboxActiveColor) : null,
      checkboxCheckColor: checkboxCheckColorProvided ? (checkboxCheckColor ?? this.checkboxCheckColor) : null,
      checkboxHoverColor: checkboxHoverColorProvided ? (checkboxHoverColor ?? this.checkboxHoverColor) : null,
      checkboxFocusColor: checkboxFocusColorProvided ? (checkboxFocusColor ?? this.checkboxFocusColor) : null,
      checkboxSplashRadius: checkboxSplashRadiusProvided ? (checkboxSplashRadius ?? this.checkboxSplashRadius) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelMaxLines: labelMaxLinesProvided ? (labelMaxLines ?? this.labelMaxLines) : null,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
    );
  }
}
