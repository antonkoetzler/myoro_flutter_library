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
  const MyoroFeedbackThemeExtension({this.spacing, this.iconSize, this.titleTextStyle, this.subtitleTextStyle});

  // coverage:ignore-start
  MyoroFeedbackThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      iconSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      subtitleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

  MyoroFeedbackThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      iconSize = kMyoroMultiplier * 30,
      titleTextStyle = textTheme.titleLarge,
      subtitleTextStyle = textTheme.bodyMedium;

  /// Spacing between the icon/title/subtitle and the action button.
  final double? spacing;

  /// Size of the icon.
  final double? iconSize;

  /// [TextStyle] of the title.
  final TextStyle? titleTextStyle;

  /// [TextStyle] of the subtitle.
  final TextStyle? subtitleTextStyle;

  @override
  MyoroFeedbackThemeExtension lerp(covariant ThemeExtension<MyoroFeedbackThemeExtension>? other, double t) {
    if (other is! MyoroFeedbackThemeExtension) return this;

    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final iconSize = lerpDouble(this.iconSize, other.iconSize, t);
    final titleTextStyle = TextStyle.lerp(this.titleTextStyle, other.titleTextStyle, t);
    final subtitleTextStyle = TextStyle.lerp(this.subtitleTextStyle, other.subtitleTextStyle, t);

    return copyWith(
      spacing: spacing,
      spacingProvided: spacing != null,
      iconSize: iconSize,
      iconSizeProvided: iconSize != null,
      titleTextStyle: titleTextStyle,
      titleTextStyleProvided: titleTextStyle != null,
      subtitleTextStyle: subtitleTextStyle,
      subtitleTextStyleProvided: subtitleTextStyle != null,
    );
  }
}
