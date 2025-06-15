import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'storyboard_screen_theme_extension.g.dart';

/// [ThemeExtension] of [StoryboardScreen].
@immutable
@myoroThemeExtension
final class StoryboardScreenThemeExtension extends ThemeExtension<StoryboardScreenThemeExtension>
    with _$StoryboardScreenThemeExtensionMixin {
  /// Spacing of [Widget]s.
  final double spacing;

  /// [IconData] of [_PreviousPageButton].
  final IconData previousPageButtonIcon;

  /// [MyoroIconTextButtonConfiguration.padding] of [_Button].
  final EdgeInsets buttonPadding;

  /// [TextStyle] of [_HeaderTitleText].
  final TextStyle titleTextStyle;

  /// [IconData] of [_ToggleThemeButton].
  final IconData toggleThemeButtonIcon;

  const StoryboardScreenThemeExtension({
    required this.spacing,
    required this.previousPageButtonIcon,
    required this.buttonPadding,
    required this.titleTextStyle,
    required this.toggleThemeButtonIcon,
  });

  StoryboardScreenThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 50),
      previousPageButtonIcon = myoroFake<IconData>(),
      buttonPadding = myoroFake<EdgeInsets>(),
      titleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      toggleThemeButtonIcon = myoroFake<IconData>();

  StoryboardScreenThemeExtension.builder(TextTheme textTheme)
    : spacing = 20,
      previousPageButtonIcon = Icons.keyboard_arrow_left,
      buttonPadding = const EdgeInsets.all(3),
      titleTextStyle = textTheme.titleLarge!,
      toggleThemeButtonIcon = Icons.sunny;

  @override
  StoryboardScreenThemeExtension lerp(covariant ThemeExtension<StoryboardScreenThemeExtension>? other, double t) {
    if (other is! StoryboardScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      previousPageButtonIcon: myoroLerp(previousPageButtonIcon, other.previousPageButtonIcon, t),
      buttonPadding: EdgeInsets.lerp(buttonPadding, other.buttonPadding, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      toggleThemeButtonIcon: myoroLerp(toggleThemeButtonIcon, other.toggleThemeButtonIcon, t),
    );
  }
}
