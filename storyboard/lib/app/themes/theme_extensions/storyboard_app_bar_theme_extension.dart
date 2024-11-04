import 'package:flutter/material.dart';
import 'package:storyboard/app/widgets/storyboard_app_bar.dart';

/// [ThemeExtension] for [StoryboardAppBar].
///
/// No defaults here as [StoryboardAppBar]'s UI is very fixed to
/// [StoryboardAppBar.preferredSize]'s height. So, for example,
/// increasing the spacing of the title & header would cause an
/// overflow.
final class StoryboardAppBarThemeExtension extends ThemeExtension<StoryboardAppBarThemeExtension> {
  const StoryboardAppBarThemeExtension();

  @override
  StoryboardAppBarThemeExtension copyWith() => const StoryboardAppBarThemeExtension();

  @override
  StoryboardAppBarThemeExtension lerp(StoryboardAppBarThemeExtension? other, double t) => this;
}
