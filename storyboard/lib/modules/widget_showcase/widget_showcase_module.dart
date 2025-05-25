import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [Module] model of the widget showcase module.
final class WidgetShowcaseModule implements Module {
  const WidgetShowcaseModule();

  @override
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return [
      const WidgetShowcaseScreenThemeExtension.builder(),
      WidgetShowcaseThemeExtension.builder(),

      // Accordions
      const MyoroAccordionWidgetShowcaseThemeExtension.builder(),
    ];
  }
}
