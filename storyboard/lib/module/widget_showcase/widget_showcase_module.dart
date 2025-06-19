import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [Module] model of the widget showcase module.
final class WidgetShowcaseModule implements Module {
  const WidgetShowcaseModule();

  @override
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return [
      // ########## Shared ##########
      WidgetShowcaseOptionThemeExtension.builder(textTheme),
      // ############################

      // ########## Screens ##########
      WidgetShowcaseScreenThemeExtension.builder(),
      // #############################

      // ########## Widget showcase options ##########
      const AxisWidgetShowcaseOptionThemeExtension.builder(),
      const BoxConstraintsWidgetShowcaseOptionThemeExtension.builder(),
      const ColorWidgetShowcaseOptionThemeExtension.builder(),
      const IconWidgetShowcaseOptionThemeExtension.builder(),
      const MouseCursorWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension.builder(),
      const PaddingWidgetShowcaseOptionThemeExtension.builder(),
      const SliderWidgetShowcaseOptionThemeExtension.builder(),
      const TextWidgetShowcaseOptionThemeExtension.builder(),
      const TextAlignWidgetShowcaseOptionThemeExtension.builder(),
      const TextMaxLinesWidgetShowcaseOptionThemeExtension.builder(),
      const TextOverflowWidgetShowcaseOptionThemeExtension.builder(),
      const TextStyleWidgetShowcaseOptionThemeExtension.builder(),
      const ThemeModeWidgetShowcaseOptionThemeExtension.builder(),
      // #############################################

      // ########## Widget showcases ##########
      // Accordions
      const MyoroAccordionWidgetShowcaseThemeExtension.builder(),

      // Apps
      const MyoroAppWidgetShowcaseThemeExtension.builder(),

      // App bars
      const MyoroAppBarWidgetShowcaseThemeExtension.builder(),

      // Buttons
      const MyoroButtonWidgetShowcaseThemeExtension.builder(),
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
      const MyoroResizeDividerWidgetShowcaseThemeExtension.builder(),

      // Drawers
      const MyoroDrawerWidgetShowcaseThemeExtension.builder(),

      // Dropdowns
      const MyoroDropdownWidgetShowcaseThemeExtension.builder(),

      // Forms
      MyoroFormWidgetShowcaseThemeExtension.builder(),

      // Graphs
      MyoroPieGraphWidgetShowcaseThemeExtension.builder(),
      MyoroPieGraphWidgetShowcaseThemeExtension.builder(),

      // Inputs
      const MyoroDatePickerInputWidgetShowcaseThemeExtension.builder(),
      MyoroInputWidgetShowcaseThemeExtension.builder(),
      const MyoroSearchInputWidgetShowcaseThemeExtension.builder(),

      // Layout builders
      const MyoroLayoutBuilderWidgetShowcaseThemeExtension.builder(),

      // Loaders
      const MyoroCircularLoaderWidgetShowcaseThemeExtension.builder(),

      // Menus
      const MyoroMenuWidgetShowcaseThemeExtension.builder(),

      // Modals
      MyoroDialogModalWidgetShowcaseThemeExtension.builder(),
      const MyoroModalWidgetShowcaseThemeExtension.builder(),

      // Radios
      const MyoroGroupRadioWidgetShowcaseThemeExtension.builder(),
      const MyoroRadioWidgetShowcaseThemeExtension.builder(),

      // Screens
      const MyoroScreenWidgetShowcaseThemeExtension.builder(),

      // Sliders
      const MyoroSliderWidgetShowcaseThemeExtension.builder(),

      // Snack bars
      const MyoroSnackBarWidgetShowcaseThemeExtension.builder(),
      const MyoroSnackBarContainerWidgetShowcaseThemeExtension.builder(),

      // Tables
      const MyoroTableWidgetShowcaseThemeExtension.builder(),

      // Tooltips
      const MyoroTooltipWidgetShowcaseThemeExtension.builder(),
      // ######################################
    ];
  }
}
