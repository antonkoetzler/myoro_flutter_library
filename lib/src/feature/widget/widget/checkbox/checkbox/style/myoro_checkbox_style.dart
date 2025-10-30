import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_style.g.dart';

/// Style model of [MyoroCheckbox].
@immutable
@myoroModel
class MyoroCheckboxStyle with _$MyoroCheckboxStyleMixin {
  /// Lerp function.
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

  /// Default constructor.
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

  /// Fake constructor.
  MyoroCheckboxStyle.fake()
    : checkboxActiveColor = myoroNullableFake<Color>(),
      checkboxCheckColor = myoroNullableFake<Color>(),
      checkboxHoverColor = myoroNullableFake<Color>(),
      checkboxFocusColor = myoroNullableFake<Color>(),
      checkboxSplashRadius = myoroNullableFake<double>(),
      labelTextStyle = myoroNullableFake<TextStyle>(),
      labelMaxLines = myoroNullableFake<int>(),
      spacing = myoroNullableFake<double>();

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
