import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCheckbox]
@immutable
@myoroThemeExtension
class MyoroCheckboxThemeExtension extends ThemeExtension<MyoroCheckboxThemeExtension>
    with _$MyoroCheckboxThemeExtensionMixin {
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

  MyoroCheckboxThemeExtension.fake()
    : activeColor = myoroFake<Color>(),
      checkColor = myoroFake<Color>(),
      hoverColor = myoroFake<Color>(),
      focusColor = myoroFake<Color>(),
      splashRadius = faker.randomGenerator.decimal(),
      labelTextStyle = myoroFake<TextStyle>(),
      spacing = faker.randomGenerator.decimal();

  MyoroCheckboxThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : activeColor = colorScheme.onPrimary,
      checkColor = colorScheme.primary,
      hoverColor = MyoroColors.transparent,
      focusColor = MyoroColors.transparent,
      splashRadius = 0,
      labelTextStyle = textTheme.bodySmall!,
      spacing = 5;

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
}
