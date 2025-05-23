import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [Module] model of the widget showcase module.
final class WidgetShowcaseModule implements Module {
  const WidgetShowcaseModule();

  @override
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return [
      WidgetShowcaseThemeExtension.builder(colorScheme),
      ..._createWidgetShowcaseOptionThemeExtensions(textTheme),
      ..._createWidgetShowcaseThemeExtensions(colorScheme, textTheme),
    ];
  }

  List<ThemeExtension> _createWidgetShowcaseOptionThemeExtensions(TextTheme textTheme) {
    return [
      const ColorWidgetShowcaseOptionThemeExtension.builder(),
      const IconWidgetShowcaseOptionThemeExtension.builder(),
      const MouseCursorWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension.builder(),
      const PaddingWidgetShowcaseOptionThemeExtension.builder(),
      const TextAlignWidgetShowcaseOptionThemeExtension.builder(),
      const TextOverflowWidgetShowcaseOptionThemeExtension.builder(),
      const TextStyleWidgetShowcaseOptionThemeExtension.builder(),
      WidgetShowcaseOptionThemeExtension.builder(textTheme),
    ];
  }

  List<ThemeExtension> _createWidgetShowcaseThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
    return [
      // Accordions
      const MyoroAccordionWidgetShowcaseThemeExtension.builder(),

      // App bars
      MyoroAppBarWidgetShowcaseThemeExtension.builder(textTheme),

      // Apps
      MyoroAppWidgetShowcaseThemeExtension.builder(colorScheme, textTheme),

      // Buttons
      MyoroButtonWidgetShowcaseThemeExtension.builder(colorScheme, textTheme),
      const MyoroIconTextButtonWidgetShowcaseThemeExtension.builder(),

      // Cards
      MyoroCardWidgetShowcaseThemeExtension.builder(textTheme),

      // Carousels
      const MyoroCarouselWidgetShowcaseThemeExtension.builder(),

      // Checkboxes
      const MyoroCheckboxWidgetShowcaseThemeExtension.builder(),
      const MyoroGroupCheckboxWidgetShowcaseThemeExtension.builder(),

      // Dividers
      const MyoroBasicDividerWidgetShowcaseThemeExtension.builder(),
      MyoroResizeDividerWidgetShowcaseThemeExtension.builder(colorScheme),

      // Drawers
      const MyoroDrawerWidgetShowcaseThemeExtension.builder(),

      // Dropdowns
      const MyoroMultiDropdownWidgetShowcaseThemeExtension.builder(),
      const MyoroSingularDropdownWidgetShowcaseThemeExtension.builder(),

      // Forms
      MyoroFormWidgetShowcaseThemeExtension.builder(textTheme),

      // Graphs
      const MyoroBarGraphWidgetShowcaseThemeExtension.builder(),
      MyoroPieGraphWidgetShowcaseThemeExtension.builder(),

      // Inputs
      const MyoroDatePickerInputWidgetShowcaseThemeExtension.builder(),
      MyoroInputWidgetShowcaseThemeExtension.builder(textTheme),
      const MyoroSearchInputWidgetShowcaseThemeExtension.builder(),

      // Layout builders
      MyoroLayoutBuilderWidgetShowcaseThemeExtension.builder(textTheme),

      // Loaders
      const MyoroCircularLoaderWidgetShowcaseThemeExtension.builder(),

      // Menus
      MyoroMenuWidgetShowcaseThemeExtension.builder(textTheme),

      // Modals
      MyoroModalWidgetShowcaseThemeExtension.builder(textTheme),
      MyoroDialogModalWidgetShowcaseThemeExtension.builder(),

      // Radios
      const MyoroGroupRadioWidgetShowcaseThemeExtension.builder(),
      const MyoroRadioWidgetShowcaseThemeExtension.builder(),

      // Resolvers
      const MyoroResolverWidgetShowcaseThemeExtension.builder(),

      // Screens
      MyoroScreenWidgetShowcaseThemeExtension.builder(textTheme),

      // Sliders
      MyoroSliderWidgetShowcaseThemeExtension.builder(colorScheme),

      // Snack bars
      MyoroSnackBarWidgetShowcaseThemeExtension.builder(colorScheme),

      // Tables
      const MyoroTableWidgetShowcaseThemeExtension.builder(),

      // Tooltips
      MyoroTooltipWidgetShowcaseThemeExtension.builder(textTheme),
    ];
  }
}
