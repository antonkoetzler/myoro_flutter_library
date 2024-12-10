import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroFormWidgetShowcase].
final class MyoroFormWidgetShowcaseThemeExtension extends ThemeExtension<MyoroFormWidgetShowcaseThemeExtension> {
  /// [_Widget]'s children's alignment.
  final MainAxisAlignment widgetMainAxisAlignment;

  /// [MyoroInputStyleEnum] of [_Widget]'s form's input.
  final MyoroInputStyleEnum widgetInputStyle;

  /// [_Widget]'s item spacing.
  final double widgetSpacing;

  /// [_SubmitButton]'s [MyoroIconTextHoverButton.mainAxisAlignment].
  final MainAxisAlignment submitButtonMainAxisAlignment;

  /// [_SubmitButton]'s [MyoroIconTextHoverButton.bordered].
  final bool submitButtonBordered;

  /// [_ResultText]'s [TextStyle].
  final TextStyle resultTextStyle;

  /// Success case's [Color].
  final Color successColor;

  /// Error cases's [Color].
  final Color errorColor;

  const MyoroFormWidgetShowcaseThemeExtension({
    required this.widgetMainAxisAlignment,
    required this.widgetInputStyle,
    required this.widgetSpacing,
    required this.submitButtonMainAxisAlignment,
    required this.submitButtonBordered,
    required this.resultTextStyle,
    required this.successColor,
    required this.errorColor,
  });

  @override
  MyoroFormWidgetShowcaseThemeExtension copyWith({
    MainAxisAlignment? widgetMainAxisAlignment,
    MyoroInputStyleEnum? widgetInputStyle,
    double? widgetSpacing,
    MainAxisAlignment? submitButtonMainAxisAlignment,
    bool? submitButtonBordered,
    TextStyle? resultTextStyle,
    Color? successColor,
    Color? errorColor,
  }) {
    return MyoroFormWidgetShowcaseThemeExtension(
      widgetMainAxisAlignment: widgetMainAxisAlignment ?? this.widgetMainAxisAlignment,
      widgetInputStyle: widgetInputStyle ?? this.widgetInputStyle,
      widgetSpacing: widgetSpacing ?? this.widgetSpacing,
      submitButtonMainAxisAlignment: submitButtonMainAxisAlignment ?? this.submitButtonMainAxisAlignment,
      submitButtonBordered: submitButtonBordered ?? this.submitButtonBordered,
      resultTextStyle: resultTextStyle ?? this.resultTextStyle,
      successColor: successColor ?? this.successColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  ThemeExtension<MyoroFormWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroFormWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroFormWidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetMainAxisAlignment: MyoroLerpHelper.lerp(widgetMainAxisAlignment, other.widgetMainAxisAlignment, t),
      widgetInputStyle: MyoroLerpHelper.lerp(widgetInputStyle, other.widgetInputStyle, t),
      widgetSpacing: lerpDouble(widgetSpacing, other.widgetSpacing, t),
      submitButtonMainAxisAlignment: MyoroLerpHelper.lerp(submitButtonMainAxisAlignment, other.submitButtonMainAxisAlignment, t),
      submitButtonBordered: MyoroLerpHelper.lerp(submitButtonBordered, other.submitButtonBordered, t),
      resultTextStyle: TextStyle.lerp(resultTextStyle, other.resultTextStyle, t),
      successColor: Color.lerp(successColor, other.successColor, t),
      errorColor: Color.lerp(errorColor, other.errorColor, t),
    );
  }
}