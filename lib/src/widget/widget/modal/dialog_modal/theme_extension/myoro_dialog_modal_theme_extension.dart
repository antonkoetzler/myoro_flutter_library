import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dialog_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroDialogModal].
@immutable
@myoroThemeExtension
class MyoroDialogModalThemeExtension extends ThemeExtension<MyoroDialogModalThemeExtension>
    with _$MyoroDialogModalThemeExtensionMixin {
  /// Text style of the simple text option in [_Message].
  final TextStyle textStyle;

  /// Spacing in between the buttons in [_FooterButtons].
  final double footerButtonsSpacing;

  const MyoroDialogModalThemeExtension({required this.textStyle, required this.footerButtonsSpacing});

  MyoroDialogModalThemeExtension.fake()
    : textStyle = myoroFake<TextStyle>(),
      footerButtonsSpacing = faker.randomGenerator.decimal();

  MyoroDialogModalThemeExtension.builder(TextTheme textTheme)
    : textStyle = textTheme.bodyMedium!,
      footerButtonsSpacing = 10;

  @override
  MyoroDialogModalThemeExtension lerp(covariant ThemeExtension<MyoroDialogModalThemeExtension>? other, double t) {
    if (other is! MyoroDialogModalThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      footerButtonsSpacing: lerpDouble(footerButtonsSpacing, other.footerButtonsSpacing, t),
    );
  }
}
