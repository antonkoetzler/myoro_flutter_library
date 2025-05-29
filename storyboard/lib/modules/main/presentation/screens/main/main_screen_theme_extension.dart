import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MainScreen].
@immutable
final class MainScreenThemeExtension extends ThemeExtension<MainScreenThemeExtension> {
  /// General spacing of [Widget]s.
  final double spacing;

  /// Padding of [_WidgetListingAccordionItemContent].
  final EdgeInsets widgetListingAccordionItemContent;

  const MainScreenThemeExtension({required this.spacing, required this.widgetListingAccordionItemContent});

  MainScreenThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      widgetListingAccordionItemContent = myoroFake<EdgeInsets>();

  const MainScreenThemeExtension.builder() : spacing = 10, widgetListingAccordionItemContent = const EdgeInsets.all(10);

  @override
  MainScreenThemeExtension copyWith({double? spacing, EdgeInsets? widgetListingAccordionItemContent}) {
    return MainScreenThemeExtension(
      spacing: spacing ?? this.spacing,
      widgetListingAccordionItemContent: widgetListingAccordionItemContent ?? this.widgetListingAccordionItemContent,
    );
  }

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

  @override
  bool operator ==(Object other) {
    return other is MainScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.widgetListingAccordionItemContent == widgetListingAccordionItemContent;
  }

  @override
  int get hashCode {
    return Object.hash(spacing, widgetListingAccordionItemContent);
  }

  @override
  String toString() =>
      'MainScreenThemeExtension(\n'
      '  spacing: $spacing\n'
      '  widgetListingAccordionItemContent: $widgetListingAccordionItemContent,\n'
      ');';
}
