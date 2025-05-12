import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [StoryboardScreen].
@immutable
final class StoryboardScreenThemeExtension extends ThemeExtension<StoryboardScreenThemeExtension> {
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
      previousPageButtonIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      buttonPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 20)),
      titleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      toggleThemeButtonIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)];

  StoryboardScreenThemeExtension.builder(TextTheme textTheme)
    : spacing = 20,
      previousPageButtonIcon = Icons.keyboard_arrow_left,
      buttonPadding = const EdgeInsets.all(3),
      titleTextStyle = textTheme.titleLarge!,
      toggleThemeButtonIcon = Icons.sunny;

  @override
  StoryboardScreenThemeExtension copyWith({
    double? spacing,
    IconData? previousPageButtonIcon,
    EdgeInsets? buttonPadding,
    TextStyle? titleTextStyle,
    IconData? toggleThemeButtonIcon,
  }) {
    return StoryboardScreenThemeExtension(
      spacing: spacing ?? this.spacing,
      previousPageButtonIcon: previousPageButtonIcon ?? this.previousPageButtonIcon,
      buttonPadding: buttonPadding ?? this.buttonPadding,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      toggleThemeButtonIcon: toggleThemeButtonIcon ?? this.toggleThemeButtonIcon,
    );
  }

  @override
  StoryboardScreenThemeExtension lerp(
    covariant ThemeExtension<StoryboardScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! StoryboardScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      previousPageButtonIcon: myoroLerp(previousPageButtonIcon, other.previousPageButtonIcon, t),
      buttonPadding: EdgeInsets.lerp(buttonPadding, other.buttonPadding, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      toggleThemeButtonIcon: myoroLerp(toggleThemeButtonIcon, other.toggleThemeButtonIcon, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StoryboardScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.previousPageButtonIcon == previousPageButtonIcon &&
        other.buttonPadding == buttonPadding &&
        other.spacing == spacing &&
        other.titleTextStyle == titleTextStyle &&
        other.toggleThemeButtonIcon == toggleThemeButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      spacing,
      previousPageButtonIcon,
      buttonPadding,
      titleTextStyle,
      toggleThemeButtonIcon,
    );
  }

  @override
  String toString() =>
      'StoryboardScreenThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  previousPageButtonIcon: $previousPageButtonIcon,\n'
      '  buttonPadding: $buttonPadding,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  toggleThemeButtonIcon: $toggleThemeButtonIcon,\n'
      ');';
}
