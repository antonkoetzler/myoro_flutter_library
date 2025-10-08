import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dialog_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroDialogModal].
@immutable
@myoroThemeExtension
class MyoroDialogModalThemeExtension extends ThemeExtension<MyoroDialogModalThemeExtension>
    with _$MyoroDialogModalThemeExtensionMixin {
  const MyoroDialogModalThemeExtension({this.textStyle, this.footerButtonsSpacing});

  MyoroDialogModalThemeExtension.fake()
    : textStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      footerButtonsSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;

  MyoroDialogModalThemeExtension.builder(TextTheme textTheme)
    : textStyle = textTheme.bodyMedium!,
      footerButtonsSpacing = 10;

  /// Text style of the simple text option in [_Message].
  final TextStyle? textStyle;

  /// Spacing in between the buttons in [_FooterButtons].
  final double? footerButtonsSpacing;

  @override
  MyoroDialogModalThemeExtension lerp(covariant ThemeExtension<MyoroDialogModalThemeExtension>? other, double t) {
    if (other is! MyoroDialogModalThemeExtension) return this;

    final textStyle = TextStyle.lerp(this.textStyle, other.textStyle, t);
    final footerButtonsSpacing = lerpDouble(this.footerButtonsSpacing, other.footerButtonsSpacing, t);

    return copyWith(
      textStyle: textStyle,
      textStyleProvided: textStyle != null,
      footerButtonsSpacing: footerButtonsSpacing,
      footerButtonsSpacingProvided: footerButtonsSpacing != null,
    );
  }
}
