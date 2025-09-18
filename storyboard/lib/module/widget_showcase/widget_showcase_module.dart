import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [Module] model of the widget showcase module.
final class WidgetShowcaseModule implements Module {
  const WidgetShowcaseModule();

  @override
  List<ThemeExtension> themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return [
      // ########## Shared ##########
      WidgetShowcaseThemeExtension.builder(textTheme),
      // ############################

      // ########## Screens ##########
      WidgetShowcaseScreenThemeExtension.builder(),
      // #############################

      // ########## Widget showcases ##########
      // Accordions
      const MyoroAccordionsWidgetShowcaseScreenThemeExtension.builder(),

      // Apps
      const MyoroAppWidgetShowcaseScreenThemeExtension.builder(),

      // App bars
      const MyoroAppBarWidgetShowcaseScreenThemeExtension.builder(),

      // Buttons
      const MyoroButtonWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroIconTextButtonWidgetShowcaseScreenThemeExtension.builder(),

      // Cards
      MyoroCardWidgetShowcaseScreenThemeExtension.builder(textTheme),

      // Carousels
      const MyoroCarouselWidgetShowcaseScreenThemeExtension.builder(),

      // Checkboxes
      const MyoroCheckboxWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension.builder(),

      // Dividers
      const MyoroBasicDividerWidgetShowcaseScreenThemeExtension.builder(),
      MyoroResizeDividerWidgetShowcaseScreenThemeExtension.builder(colorScheme),

      // Drawers
      const MyoroDrawerWidgetShowcaseScreenThemeExtension.builder(),

      // Dropdowns
      const MyoroDropdownsWidgetShowcaseScreenThemeExtension.builder(),

      // Feedbacks
      const MyoroFeedbackWidgetShowcaseScreenThemeExtension.builder(),

      // Forms
      MyoroFormWidgetShowcaseScreenThemeExtension.builder(),

      // Graphs
      MyoroPieGraphWidgetShowcaseScreenThemeExtension.builder(),
      MyoroPieGraphWidgetShowcaseScreenThemeExtension.builder(),

      // Inputs
      const MyoroDatePickerInputWidgetShowcaseScreenThemeExtension.builder(),
      MyoroInputWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroSearchInputWidgetShowcaseScreenThemeExtension.builder(),

      // Layout builders
      const MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension.builder(),

      // Loaders
      const MyoroCircularLoaderWidgetShowcaseScreenThemeExtension.builder(),

      // Menus
      const MyoroMenusWidgetShowcaseScreenThemeExtension.builder(),

      // Modals
      MyoroDialogModalWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroModalWidgetShowcaseScreenThemeExtension.builder(),

      // Pickers
      const MyoroFilePickerWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroImagePickerWidgetShowcaseScreenThemeExtension.builder(),

      // Radios
      const MyoroGroupRadioWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroRadioWidgetShowcaseScreenThemeExtension.builder(),

      // Screens
      const MyoroScreenWidgetShowcaseScreenThemeExtension.builder(),

      // Sliders
      const MyoroSlidersWidgetShowcaseScreenThemeExtension.builder(),

      // Snack bars
      const MyoroSnackBarWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension.builder(),

      // Tab views
      const MyoroTabViewWidgetShowcaseScreenThemeExtension.builder(),

      // Tables
      const MyoroTableWidgetShowcaseScreenThemeExtension.builder(),

      // Tooltips
      const MyoroTooltipWidgetShowcaseScreenThemeExtension.builder(),
      // ######################################
    ];
  }
}
