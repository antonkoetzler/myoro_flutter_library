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
  const MyoroIconTextButtonThemeExtension({
    required this.contentPadding,
    required this.spacing,
    required this.textStyle,
  });

  MyoroIconTextButtonThemeExtension.fake()
    : contentPadding = myoroFake<EdgeInsets>(),
      spacing = faker.randomGenerator.decimal(scale: 20),
      textStyle = myoroFake<TextStyle>();

  MyoroIconTextButtonThemeExtension.builder(TextTheme textTheme)
    : contentPadding = const EdgeInsets.all(5),
      spacing = 10,
      textStyle = textTheme.bodyMedium!;

  /// Content padding.
  final EdgeInsets contentPadding;

  /// Spacing between text and icon.
  final double spacing;

  /// [TextStyle] of text.
  final TextStyle textStyle;

  @override
  MyoroIconTextButtonThemeExtension lerp(covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other, double t) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;
    return copyWith(
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
