import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'main_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MainScreen].
@immutable
@myoroThemeExtension
final class MainScreenThemeExtension extends ThemeExtension<MainScreenThemeExtension>
    with _$MainScreenThemeExtensionMixin {
  const MainScreenThemeExtension({required this.spacing, required this.widgetListingAccordionItemContent});

  // coverage:ignore-start
  MainScreenThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      widgetListingAccordionItemContent = myoroFake<EdgeInsets>();
  // coverage:ignore-end

  // TODO: Constant numbers need to be moved to a common variable.
  const MainScreenThemeExtension.builder() : spacing = 10, widgetListingAccordionItemContent = const EdgeInsets.all(10);

  /// General spacing of [Widget]s.
  final double spacing;

  /// Padding of [_WidgetListingAccordionItemContent].
  final EdgeInsets widgetListingAccordionItemContent;

  @override
  MainScreenThemeExtension lerp(covariant ThemeExtension<MainScreenThemeExtension>? other, double t) {
    if (other is! MainScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      widgetListingAccordionItemContent: EdgeInsets.lerp(
        widgetListingAccordionItemContent,
        other.widgetListingAccordionItemContent,
        t,
      ),
    );
  }
}
