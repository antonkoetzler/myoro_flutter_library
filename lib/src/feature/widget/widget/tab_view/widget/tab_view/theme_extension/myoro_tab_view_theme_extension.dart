import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTabView].
@immutable
@myoroThemeExtension
class MyoroTabViewThemeExtension extends ThemeExtension<MyoroTabViewThemeExtension>
    with _$MyoroTabViewThemeExtensionMixin {
  const MyoroTabViewThemeExtension({
    required this.tabButtonBorderRadius,
    required this.tabButtonIdleColor,
    required this.tabButtonHoverColor,
    required this.tabButtonTapColor,
    required this.tabButtonIconSize,
    required this.tabButtonTextStyle,
  });

  // coverage:ignore-start
  MyoroTabViewThemeExtension.fake()
    : tabButtonBorderRadius = myoroFake<BorderRadius>(),
      tabButtonIdleColor = myoroFake<Color>(),
      tabButtonHoverColor = myoroFake<Color>(),
      tabButtonTapColor = myoroFake<Color>(),
      tabButtonIconSize = faker.randomGenerator.decimal(scale: 20),
      tabButtonTextStyle = myoroFake<TextStyle>();
  // coverage:ignore-end

  MyoroTabViewThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : tabButtonBorderRadius = BorderRadius.zero,
      tabButtonIdleColor = colorScheme.onPrimary,
      tabButtonHoverColor = colorScheme.onPrimary.darken(0.2),
      tabButtonTapColor = colorScheme.onPrimary.darken(0.4),
      tabButtonIconSize = kMyoroMultiplier * 5,
      tabButtonTextStyle = textTheme.bodySmall!;

  /// [BorderRadius] of a tab traversal button.
  final BorderRadius tabButtonBorderRadius;

  /// [MyoroTapStatusEnum.idle]'s [Color] of the tab's traversal button when the tab is selected.
  final Color tabButtonIdleColor;

  /// [MyoroTapStatusEnum.hover]'s [Color] of the tab's traversal button when the tab is selected.
  final Color tabButtonHoverColor;

  /// [MyoroTapStatusEnum.tap]'s [Color] of the tab's traversal button when the tab is selected.
  final Color tabButtonTapColor;

  /// Icon size of a tab traversal button.
  final double tabButtonIconSize;

  /// [TextStyle] of a tab traversal button.
  final TextStyle tabButtonTextStyle;

  @override
  MyoroTabViewThemeExtension lerp(covariant ThemeExtension<MyoroTabViewThemeExtension>? other, double t) {
    if (other is! MyoroTabViewThemeExtension) return this;
    return copyWith(
      tabButtonBorderRadius: BorderRadius.lerp(tabButtonBorderRadius, other.tabButtonBorderRadius, t),
      tabButtonIdleColor: Color.lerp(tabButtonIdleColor, other.tabButtonIdleColor, t),
      tabButtonHoverColor: Color.lerp(tabButtonHoverColor, other.tabButtonHoverColor, t),
      tabButtonTapColor: Color.lerp(tabButtonTapColor, other.tabButtonTapColor, t),
      tabButtonIconSize: lerpDouble(tabButtonIconSize, other.tabButtonIconSize, t),
      tabButtonTextStyle: TextStyle.lerp(tabButtonTextStyle, other.tabButtonTextStyle, t),
    );
  }

  /// [MyoroIconTextButtonConfiguration.backgroundColorBuilder] of a tab traversal button when it's selected.
  Color selectedTabButtonBackgroundColorBuilder(MyoroTapStatusEnum tapStatus) {
    return switch (tapStatus) {
      MyoroTapStatusEnum.idle => tabButtonTapColor,
      // coverage:ignore-start
      MyoroTapStatusEnum.hover => tabButtonHoverColor,
      MyoroTapStatusEnum.tap => tabButtonTapColor,
      // coverage:ignore-end
    };
  }
}
