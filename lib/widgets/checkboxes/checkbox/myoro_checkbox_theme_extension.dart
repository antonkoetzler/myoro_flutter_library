import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroCheckbox]
@immutable
class MyoroCheckboxThemeExtension extends ThemeExtension<MyoroCheckboxThemeExtension> {
  /// Background color of the checkbox when selected.
  final Color activeColor;

  /// Color of the checkmark.
  final Color checkColor;

  /// Hover color of the [Checkbox].
  final Color hoverColor;

  /// Focus color of the [Checkbox].
  final Color focusColor;

  /// Splash radius when the [Checkbox] is hovered.
  final double splashRadius;

  /// Text style of the label.
  final TextStyle labelTextStyle;

  /// Spacing between the checkbox and the label.
  final double spacing;

  const MyoroCheckboxThemeExtension({
    required this.activeColor,
    required this.checkColor,
    required this.hoverColor,
    required this.focusColor,
    required this.splashRadius,
    required this.labelTextStyle,
    required this.spacing,
  });

  MyoroCheckboxThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : activeColor = colorScheme.onPrimary,
      checkColor = colorScheme.primary,
      hoverColor = MyoroColorDesignSystem.transparent,
      focusColor = MyoroColorDesignSystem.transparent,
      splashRadius = 0,
      labelTextStyle = textTheme.headlineSmall!,
      spacing = 5;

  MyoroCheckboxThemeExtension.fake()
    : activeColor = myoroFake<Color>(),
      checkColor = myoroFake<Color>(),
      hoverColor = myoroFake<Color>(),
      focusColor = myoroFake<Color>(),
      splashRadius = faker.randomGenerator.decimal(),
      labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      spacing = faker.randomGenerator.decimal();

  @override
  MyoroCheckboxThemeExtension copyWith({
    Color? activeColor,
    Color? checkColor,
    Color? hoverColor,
    Color? focusColor,
    double? splashRadius,
    TextStyle? labelTextStyle,
    double? spacing,
  }) {
    return MyoroCheckboxThemeExtension(
      activeColor: activeColor ?? this.activeColor,
      checkColor: checkColor ?? this.checkColor,
      hoverColor: hoverColor ?? this.hoverColor,
      focusColor: focusColor ?? this.focusColor,
      splashRadius: splashRadius ?? this.splashRadius,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  MyoroCheckboxThemeExtension lerp(covariant ThemeExtension<MyoroCheckboxThemeExtension>? other, double t) {
    if (other is! MyoroCheckboxThemeExtension) return this;
    return copyWith(
      activeColor: Color.lerp(activeColor, other.activeColor, t),
      checkColor: Color.lerp(checkColor, other.checkColor, t),
      hoverColor: Color.lerp(hoverColor, other.hoverColor, t),
      focusColor: Color.lerp(focusColor, other.focusColor, t),
      splashRadius: lerpDouble(splashRadius, other.splashRadius, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxThemeExtension &&
        other.runtimeType == runtimeType &&
        other.activeColor == activeColor &&
        other.checkColor == checkColor &&
        other.hoverColor == hoverColor &&
        other.focusColor == focusColor &&
        other.splashRadius == splashRadius &&
        other.labelTextStyle == labelTextStyle &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hash(activeColor, checkColor, hoverColor, focusColor, splashRadius, labelTextStyle, spacing);
  }

  @override
  String toString() =>
      'MyoroCheckboxThemeExtension(\n'
      '  activeColor: $activeColor,\n'
      '  checkColor: $checkColor,\n'
      '  hoverColor: $hoverColor,\n'
      '  focusColor: $focusColor,\n'
      '  splashRadius: $splashRadius,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  spacing: $spacing,\n'
      ');';
}
