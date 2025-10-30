import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_style.g.dart';

/// Style model of [MyoroGroupCheckbox].
@immutable
@myoroModel
class MyoroGroupCheckboxStyle extends MyoroCheckboxStyle with _$MyoroGroupCheckboxStyleMixin {
  /// Lerp function.
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

  /// Default constructor.
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

  /// Fake constructor.
  factory MyoroGroupCheckboxStyle.fake() {
    return MyoroGroupCheckboxStyle(
      checkboxActiveColor: myoroNullableFake<Color>(),
      checkboxCheckColor: myoroNullableFake<Color>(),
      checkboxHoverColor: myoroNullableFake<Color>(),
      checkboxFocusColor: myoroNullableFake<Color>(),
      checkboxSplashRadius: myoroNullableFake<double>(),
      labelTextStyle: myoroNullableFake<TextStyle>(),
      labelMaxLines: myoroNullableFake<int>(),
      spacing: myoroNullableFake<double>(),
    );
  }

  /// Cross axis spacing in between each checkbox.
  final double? runSpacing;
}
