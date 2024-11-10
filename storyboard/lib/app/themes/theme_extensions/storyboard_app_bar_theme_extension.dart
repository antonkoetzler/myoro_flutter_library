import 'package:flutter/material.dart';
import 'package:storyboard/app/widgets/storyboard_app_bar.dart';

/// [ThemeExtension] for [StoryboardAppBar].
///
/// No defaults here as [StoryboardAppBar]'s UI is very fixed to
/// [StoryboardAppBar.preferredSize]'s height. So, for example,
/// increasing the spacing of the title & header would cause an
/// overflow.
final class StoryboardAppBarThemeExtension extends ThemeExtension<StoryboardAppBarThemeExtension> {
  /// [TextStyle] of the title in [_TitleHeader].
  final TextStyle titleTextStyle;

  /// [TextStyle] of the subtitle in [_TitleHeader].
  final TextStyle subtitleTextStyle;

  const StoryboardAppBarThemeExtension({
    required this.titleTextStyle,
    required this.subtitleTextStyle,
  });

  @override
  StoryboardAppBarThemeExtension copyWith({
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
  }) {
    return StoryboardAppBarThemeExtension(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? this.subtitleTextStyle,
    );
  }

  @override
  StoryboardAppBarThemeExtension lerp(
    covariant ThemeExtension<StoryboardAppBarThemeExtension>? other,
    double t,
  ) {
    if (other is! StoryboardAppBarThemeExtension) return this;
    return copyWith(
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle: TextStyle.lerp(subtitleTextStyle, other.subtitleTextStyle, t),
    );
  }
}
