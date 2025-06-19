import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_resize_divider_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroResizeDividerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroResizeDividerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroResizeDividerWidgetShowcaseScreenThemeExtension>
    with _$MyoroResizeDividerWidgetShowcaseScreenThemeExtensionMixin {
  /// Size of [_Kitty].
  final double kittySize;

  /// [BorderRadius] of [_Kitty].
  final BorderRadius kittyBorderRadius;

  /// [Color] of [_Cover].
  final Color coverColor;

  const MyoroResizeDividerWidgetShowcaseScreenThemeExtension({
    required this.kittySize,
    required this.kittyBorderRadius,
    required this.coverColor,
  });

  MyoroResizeDividerWidgetShowcaseScreenThemeExtension.fake()
    : kittySize = faker.randomGenerator.decimal(scale: 500, min: 10),
      kittyBorderRadius = myoroFake<BorderRadius>(),
      coverColor = myoroFake<Color>();

  MyoroResizeDividerWidgetShowcaseScreenThemeExtension.builder(ColorScheme colorScheme)
    : kittySize = 300,
      kittyBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      coverColor = colorScheme.onPrimary;

  @override
  MyoroResizeDividerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroResizeDividerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroResizeDividerWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      kittySize: lerpDouble(kittySize, other.kittySize, t),
      kittyBorderRadius: BorderRadius.lerp(kittyBorderRadius, other.kittyBorderRadius, t),
      coverColor: Color.lerp(coverColor, other.coverColor, t),
    );
  }
}
