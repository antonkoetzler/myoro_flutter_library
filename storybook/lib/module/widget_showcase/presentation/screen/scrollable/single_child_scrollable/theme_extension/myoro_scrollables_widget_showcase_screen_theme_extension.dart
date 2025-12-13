import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_scrollables_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroScrollablesWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroScrollablesWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>
    with _$MyoroScrollablesWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroScrollablesWidgetShowcaseScreenThemeExtension({
    required this.spacing,
    required this.itemHeight,
    required this.itemMargin,
    required this.singleChildScrollableItemColor,
    required this.listScrollableItemColor,
  });

  MyoroScrollablesWidgetShowcaseScreenThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      itemHeight = faker.randomGenerator.decimal(scale: 200),
      itemMargin = myoroFake<EdgeInsets>(),
      singleChildScrollableItemColor = myoroFake<Color>(),
      listScrollableItemColor = myoroFake<Color>();

  MyoroScrollablesWidgetShowcaseScreenThemeExtension.builder(ColorScheme colorScheme)
    : spacing = kMyoroMultiplier * 4,
      itemHeight = 100.0,
      itemMargin = const EdgeInsets.all(8),
      singleChildScrollableItemColor = Colors.blue.withValues(alpha: 0.3),
      listScrollableItemColor = Colors.green.withValues(alpha: 0.3);

  /// Spacing between the scrollables.
  final double spacing;

  /// Height of each item in the scrollables.
  final double itemHeight;

  /// Margin of each item in the scrollables.
  final EdgeInsets itemMargin;

  /// Color of items in [MyoroSingleChildScrollable].
  final Color singleChildScrollableItemColor;

  /// Color of items in [MyoroListScrollable].
  final Color listScrollableItemColor;

  @override
  MyoroScrollablesWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScrollablesWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      itemHeight: lerpDouble(itemHeight, other.itemHeight, t),
      itemMargin: EdgeInsets.lerp(itemMargin, other.itemMargin, t),
      singleChildScrollableItemColor: Color.lerp(
        singleChildScrollableItemColor,
        other.singleChildScrollableItemColor,
        t,
      ),
      listScrollableItemColor: Color.lerp(listScrollableItemColor, other.listScrollableItemColor, t),
    );
  }
}
