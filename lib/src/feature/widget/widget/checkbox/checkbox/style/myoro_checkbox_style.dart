import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_style.g.dart';

/// Style model of [MyoroCheckbox].
@immutable
@myoroModel
class MyoroCheckboxStyle with _$MyoroCheckboxStyleMixin {
  static MyoroCheckboxStyle lerp(MyoroCheckboxStyle? a, MyoroCheckboxStyle? b, double t) {
    return MyoroCheckboxStyle(
      checkboxActiveColor: Color.lerp(a?.checkboxActiveColor, b?.checkboxActiveColor, t),
      checkboxCheckColor: Color.lerp(a?.checkboxCheckColor, b?.checkboxCheckColor, t),
      checkboxHoverColor: Color.lerp(a?.checkboxHoverColor, b?.checkboxHoverColor, t),
      checkboxFocusColor: Color.lerp(a?.checkboxFocusColor, b?.checkboxFocusColor, t),
      checkboxSplashRadius: lerpDouble(a?.checkboxSplashRadius, b?.checkboxSplashRadius, t),
      labelTextStyle: TextStyle.lerp(a?.labelTextStyle, b?.labelTextStyle, t),
      labelMaxLines: myoroFallbackLerp(a?.labelMaxLines, b?.labelMaxLines, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
    );
  }

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

  MyoroCheckboxStyle.fake()
    : checkboxActiveColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxCheckColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxFocusColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxSplashRadius = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelMaxLines = faker.randomGenerator.boolean() ? faker.randomGenerator.integer(10) : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null;

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
}
