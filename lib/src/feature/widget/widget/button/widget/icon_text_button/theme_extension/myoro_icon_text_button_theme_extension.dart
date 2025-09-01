import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIconTextButton].
@immutable
@myoroThemeExtension
class MyoroIconTextButtonThemeExtension extends ThemeExtension<MyoroIconTextButtonThemeExtension>
    with _$MyoroIconTextButtonThemeExtensionMixin {
  const MyoroIconTextButtonThemeExtension({this.contentPadding, this.spacing, this.textStyle});

  // coverage:ignore-start
  MyoroIconTextButtonThemeExtension.fake()
    : contentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      textStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

  MyoroIconTextButtonThemeExtension.builder(TextTheme textTheme)
    : contentPadding = const EdgeInsets.all(5),
      spacing = 10,
      textStyle = textTheme.bodyMedium!;

  /// Content padding.
  final EdgeInsets? contentPadding;

  /// Spacing between text and icon.
  final double? spacing;

  /// [TextStyle] of text.
  final TextStyle? textStyle;

  @override
  MyoroIconTextButtonThemeExtension lerp(covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other, double t) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;

    final contentPadding = EdgeInsets.lerp(this.contentPadding, other.contentPadding, t);
    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final textStyle = TextStyle.lerp(this.textStyle, other.textStyle, t);

    return copyWith(
      contentPadding: contentPadding,
      contentPaddingProvided: contentPadding != null,
      spacing: spacing,
      spacingProvided: spacing != null,
      textStyle: textStyle,
      textStyleProvided: textStyle != null,
    );
  }
}
