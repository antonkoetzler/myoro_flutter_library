import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MainScreen].
@immutable
final class MainScreenThemeExtension extends ThemeExtension<MainScreenThemeExtension> {
  /// Padding of [_WidgetListingAccordionItemContent].
  final EdgeInsets widgetListingAccordionItemContent;

  const MainScreenThemeExtension({required this.widgetListingAccordionItemContent});

  MainScreenThemeExtension.fake() : widgetListingAccordionItemContent = myoroFake<EdgeInsets>();

  const MainScreenThemeExtension.builder() : widgetListingAccordionItemContent = const EdgeInsets.all(10);

  @override
  MainScreenThemeExtension copyWith({EdgeInsets? widgetListingAccordionItemContent}) {
    return MainScreenThemeExtension(
      widgetListingAccordionItemContent: widgetListingAccordionItemContent ?? this.widgetListingAccordionItemContent,
    );
  }

  @override
  MainScreenThemeExtension lerp(covariant ThemeExtension<MainScreenThemeExtension>? other, double t) {
    if (other is! MainScreenThemeExtension) return this;
    return copyWith(
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
        other.widgetListingAccordionItemContent == widgetListingAccordionItemContent;
  }

  @override
  int get hashCode {
    return Object.hashAll([widgetListingAccordionItemContent]);
  }

  @override
  String toString() =>
      'MainScreenThemeExtension(\n'
      '  widgetListingAccordionItemContent: $widgetListingAccordionItemContent,\n'
      ');';
}
