import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDialogModal].
final class MyoroDialogModalThemeExtension extends ThemeExtension<MyoroDialogModalThemeExtension> {
  /// Text style of the simple text option in [_Message].
  final TextStyle textStyle;

  /// Spacing in between the buttons in [_FooterButtons].
  final double footerButtonsSpacing;

  const MyoroDialogModalThemeExtension({
    required this.textStyle,
    required this.footerButtonsSpacing,
  });

  MyoroDialogModalThemeExtension.fake()
      : textStyle = MyoroTypographyTheme.instance.randomTextStyle,
        footerButtonsSpacing = faker.randomGenerator.decimal();

  @override
  MyoroDialogModalThemeExtension copyWith({
    TextStyle? textStyle,
    double? footerButtonsSpacing,
  }) {
    return MyoroDialogModalThemeExtension(
      textStyle: textStyle ?? this.textStyle,
      footerButtonsSpacing: footerButtonsSpacing ?? this.footerButtonsSpacing,
    );
  }

  @override
  MyoroDialogModalThemeExtension lerp(
    covariant ThemeExtension<MyoroDialogModalThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDialogModalThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      footerButtonsSpacing: lerpDouble(footerButtonsSpacing, other.footerButtonsSpacing, t),
    );
  }
}
