import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroFormWidgetShowcase].
@immutable
final class MyoroFormWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroFormWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of [_Widget]'s form's input.
  final MyoroInputStyleEnum widgetInputStyle;

  /// [_Widget]'s item spacing.
  final double widgetSpacing;

  /// [_ResultText]'s [TextStyle].
  final TextStyle resultTextStyle;

  /// Success case's [Color].
  final Color successColor;

  /// Error cases's [Color].
  final Color errorColor;

  const MyoroFormWidgetShowcaseThemeExtension({
    required this.widgetInputStyle,
    required this.widgetSpacing,
    required this.resultTextStyle,
    required this.successColor,
    required this.errorColor,
  });

  MyoroFormWidgetShowcaseThemeExtension.fake()
    : widgetInputStyle = MyoroInputStyleEnum.fake(),
      widgetSpacing = faker.randomGenerator.decimal(),
      resultTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      successColor = myoroFake<Color>(),
      errorColor = myoroFake<Color>();

  MyoroFormWidgetShowcaseThemeExtension.builder(TextTheme textTheme)
    : widgetInputStyle = MyoroInputStyleEnum.outlined,
      widgetSpacing = 10,
      resultTextStyle = textTheme.headlineLarge!,
      successColor = Colors.green,
      errorColor = Colors.red;

  @override
  MyoroFormWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? widgetInputStyle,
    double? widgetSpacing,
    TextStyle? resultTextStyle,
    Color? successColor,
    Color? errorColor,
  }) {
    return MyoroFormWidgetShowcaseThemeExtension(
      widgetInputStyle: widgetInputStyle ?? this.widgetInputStyle,
      widgetSpacing: widgetSpacing ?? this.widgetSpacing,
      resultTextStyle: resultTextStyle ?? this.resultTextStyle,
      successColor: successColor ?? this.successColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  MyoroFormWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroFormWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroFormWidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetInputStyle: myoroLerp(widgetInputStyle, other.widgetInputStyle, t),
      widgetSpacing: lerpDouble(widgetSpacing, other.widgetSpacing, t),
      resultTextStyle: TextStyle.lerp(
        resultTextStyle,
        other.resultTextStyle,
        t,
      ),
      successColor: Color.lerp(successColor, other.successColor, t),
      errorColor: Color.lerp(errorColor, other.errorColor, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFormWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.widgetInputStyle == widgetInputStyle &&
        other.widgetSpacing == widgetSpacing &&
        other.resultTextStyle == resultTextStyle &&
        other.successColor == successColor &&
        other.errorColor == errorColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      widgetInputStyle,
      widgetSpacing,
      resultTextStyle,
      successColor,
      errorColor,
    );
  }

  @override
  String toString() =>
      'MyoroFormWidgetShowcaseThemeExtension(\n'
      '  widgetInputStyle: $widgetInputStyle,\n'
      '  widgetSpacing: $widgetSpacing,\n'
      '  resultTextStyle: $resultTextStyle,\n'
      '  successColor: $successColor,\n'
      '  errorColor: $errorColor,\n'
      ');';
}
