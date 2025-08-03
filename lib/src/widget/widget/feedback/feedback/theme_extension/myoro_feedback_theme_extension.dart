import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFeedback].
@immutable
@myoroThemeExtension
class MyoroFeedbackThemeExtension extends ThemeExtension<MyoroFeedbackThemeExtension>
    with _$MyoroFeedbackThemeExtensionMixin {
  const MyoroFeedbackThemeExtension({
    required this.spacing,
    required this.iconSize,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
  });

  // coverage:ignore-start
  MyoroFeedbackThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      iconSize = faker.randomGenerator.decimal(scale: 20),
      titleTextStyle = myoroFake<TextStyle>(),
      subtitleTextStyle = myoroFake<TextStyle>();
  // coverage:ignore-end

  MyoroFeedbackThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      iconSize = kMyoroMultiplier * 30,
      titleTextStyle = textTheme.titleLarge!,
      subtitleTextStyle = textTheme.bodyMedium!;

  /// Spacing between the icon/title/subtitle and the action button.
  final double spacing;

  /// Size of the icon.
  final double iconSize;

  /// [TextStyle] of the title.
  final TextStyle titleTextStyle;

  /// [TextStyle] of the subtitle.
  final TextStyle subtitleTextStyle;

  @override
  MyoroFeedbackThemeExtension lerp(covariant ThemeExtension<MyoroFeedbackThemeExtension>? other, double t) {
    if (other is! MyoroFeedbackThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      iconSize: lerpDouble(iconSize, other.iconSize, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle: TextStyle.lerp(subtitleTextStyle, other.subtitleTextStyle, t),
    );
  }
}
