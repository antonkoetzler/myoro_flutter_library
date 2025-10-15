import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'storybook_screen_theme_extension.g.dart';

/// [ThemeExtension] of [StorybookScreen].
@immutable
@myoroThemeExtension
final class StorybookScreenThemeExtension extends ThemeExtension<StorybookScreenThemeExtension>
    with _$StorybookScreenThemeExtensionMixin {
  const StorybookScreenThemeExtension({
    required this.spacing,
    required this.previousPageButtonIcon,
    required this.buttonPadding,
    required this.titleTextStyle,
    required this.toggleThemeButtonIcon,
  });

  StorybookScreenThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 50),
      previousPageButtonIcon = myoroFake<IconData>(),
      buttonPadding = myoroFake<EdgeInsets>(),
      titleTextStyle = myoroFake<TextStyle>(),
      toggleThemeButtonIcon = myoroFake<IconData>();

  StorybookScreenThemeExtension.builder(TextTheme textTheme)
    : spacing = 20,
      previousPageButtonIcon = Icons.keyboard_arrow_left,
      buttonPadding = const EdgeInsets.all(3),
      titleTextStyle = textTheme.titleLarge!,
      toggleThemeButtonIcon = Icons.sunny;

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

  @override
  StorybookScreenThemeExtension lerp(covariant ThemeExtension<StorybookScreenThemeExtension>? other, double t) {
    if (other is! StorybookScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      previousPageButtonIcon: myoroFallbackLerp(previousPageButtonIcon, other.previousPageButtonIcon, t),
      buttonPadding: EdgeInsets.lerp(buttonPadding, other.buttonPadding, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      toggleThemeButtonIcon: myoroFallbackLerp(toggleThemeButtonIcon, other.toggleThemeButtonIcon, t),
    );
  }
}
