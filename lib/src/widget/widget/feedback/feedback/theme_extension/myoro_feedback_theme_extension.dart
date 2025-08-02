import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFeedback].
@immutable
@myoroModel
final class MyoroFeedbackThemeExtension extends ThemeExtension<MyoroFeedbackThemeExtension>
    with _$MyoroFeedbackThemeExtensionMixin {
  const MyoroFeedbackThemeExtension({
    required this.iconSize,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
  });

  // coverage:ignore-start
  MyoroFeedbackThemeExtension.fake()
    : iconSize = faker.randomGenerator.decimal(scale: 20),
      titleTextStyle = myoroFake<TextStyle>(),
      subtitleTextStyle = myoroFake<TextStyle>();
  // coverage:ignore-end

  MyoroFeedbackThemeExtension.builder(TextTheme textTheme)
    : iconSize = kMyoroMultiplier * 50,
      titleTextStyle = textTheme.titleLarge!,
      subtitleTextStyle = textTheme.bodyMedium!;

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
      iconSize: lerpDouble(iconSize, other.iconSize, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle: TextStyle.lerp(subtitleTextStyle, other.subtitleTextStyle, t),
    );
  }
}
