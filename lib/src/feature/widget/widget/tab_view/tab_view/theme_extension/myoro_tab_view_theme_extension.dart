
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTabView].
@immutable
@myoroThemeExtension
class MyoroTabViewThemeExtension extends ThemeExtension<MyoroTabViewThemeExtension>
    with _$MyoroTabViewThemeExtensionMixin
    implements MyoroTabViewStyle {
  const MyoroTabViewThemeExtension({
    this.tabButtonBorderRadius,
    this.tabButtonIdleColor,
    this.tabButtonHoverColor,
    this.tabButtonTapColor,
    this.tabButtonIconSize,
    this.tabButtonTextStyle,
  });

  // coverage:ignore-start
  MyoroTabViewThemeExtension.fake()
    : tabButtonBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      tabButtonIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tabButtonHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tabButtonTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tabButtonIconSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      tabButtonTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

  MyoroTabViewThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : tabButtonBorderRadius = BorderRadius.zero,
      tabButtonIdleColor = colorScheme.onPrimary,
      tabButtonHoverColor = colorScheme.onPrimary.darken(0.2),
      tabButtonTapColor = colorScheme.onPrimary.darken(0.4),
      tabButtonIconSize = kMyoroMultiplier * 5,
      tabButtonTextStyle = textTheme.bodySmall!;

  /// [BorderRadius] of a tab traversal button.
  @override
  final BorderRadius? tabButtonBorderRadius;

  /// [MyoroTapStatusEnum.idle]'s [Color] of the tab's traversal button when the tab is selected.
  @override
  final Color? tabButtonIdleColor;

  /// [MyoroTapStatusEnum.hover]'s [Color] of the tab's traversal button when the tab is selected.
  @override
  final Color? tabButtonHoverColor;

  /// [MyoroTapStatusEnum.tap]'s [Color] of the tab's traversal button when the tab is selected.
  @override
  final Color? tabButtonTapColor;

  /// Icon size of a tab traversal button.
  @override
  final double? tabButtonIconSize;

  /// [TextStyle] of a tab traversal button.
  @override
  final TextStyle? tabButtonTextStyle;

  @override
  MyoroTabViewThemeExtension lerp(covariant MyoroTabViewThemeExtension? other, double t) {
    if (other is! MyoroTabViewThemeExtension) return this;
    final style = MyoroTabViewStyle.lerp(this, other, t);
    return MyoroTabViewThemeExtension(
      tabButtonBorderRadius: style.tabButtonBorderRadius,
      tabButtonIdleColor: style.tabButtonIdleColor,
      tabButtonHoverColor: style.tabButtonHoverColor,
      tabButtonTapColor: style.tabButtonTapColor,
      tabButtonIconSize: style.tabButtonIconSize,
      tabButtonTextStyle: style.tabButtonTextStyle,
    );
  }
}
