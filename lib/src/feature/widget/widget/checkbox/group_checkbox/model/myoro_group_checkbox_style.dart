import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_style.g.dart';

/// Style model of [MyoroGroupCheckbox].
@immutable
@myoroModel
class MyoroGroupCheckboxStyle extends MyoroCheckboxStyle with _$MyoroGroupCheckboxStyleMixin {
  static MyoroGroupCheckboxStyle lerp(MyoroGroupCheckboxStyle? a, MyoroGroupCheckboxStyle? b, double t) {
    return MyoroGroupCheckboxStyle(
      checkboxActiveColor: Color.lerp(a?.checkboxActiveColor, b?.checkboxActiveColor, t),
      checkboxCheckColor: Color.lerp(a?.checkboxCheckColor, b?.checkboxCheckColor, t),
      checkboxHoverColor: Color.lerp(a?.checkboxHoverColor, b?.checkboxHoverColor, t),
      checkboxFocusColor: Color.lerp(a?.checkboxFocusColor, b?.checkboxFocusColor, t),
      checkboxSplashRadius: lerpDouble(a?.checkboxSplashRadius, b?.checkboxSplashRadius, t),
      labelTextStyle: TextStyle.lerp(a?.labelTextStyle, b?.labelTextStyle, t),
      labelMaxLines: myoroFallbackLerp(a?.labelMaxLines, b?.labelMaxLines, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      runSpacing: lerpDouble(a?.runSpacing, b?.runSpacing, t),
    );
  }

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
}
