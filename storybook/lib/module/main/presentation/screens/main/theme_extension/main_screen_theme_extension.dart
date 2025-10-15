import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'main_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MainScreen].
@immutable
@myoroThemeExtension
final class MainScreenThemeExtension extends ThemeExtension<MainScreenThemeExtension>
    with _$MainScreenThemeExtensionMixin {
  const MainScreenThemeExtension({required this.spacing, required this.widgetListingAccordionSearchBarMargin});

  MainScreenThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      widgetListingAccordionSearchBarMargin = myoroFake<EdgeInsets>();

  const MainScreenThemeExtension.builder()
    : spacing = kMyoroMultiplier * 2,
      widgetListingAccordionSearchBarMargin = const EdgeInsets.all(kMyoroMultiplier * 2);

  /// General spacing of [Widget]s.
  final double spacing;

  /// [EdgeInsets] margins of the search bar.
  final EdgeInsets widgetListingAccordionSearchBarMargin;

  @override
  MainScreenThemeExtension lerp(covariant ThemeExtension<MainScreenThemeExtension>? other, double t) {
    if (other is! MainScreenThemeExtension) return this;

    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      widgetListingAccordionSearchBarMargin: EdgeInsets.lerp(
        widgetListingAccordionSearchBarMargin,
        other.widgetListingAccordionSearchBarMargin,
        t,
      ),
    );
  }
}
