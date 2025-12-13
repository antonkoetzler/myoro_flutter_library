import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';

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
      WidgetShowcaseScreenThemeExtension.builder(textTheme),
      // #############################

      // ########## Widget showcases ##########
      // Cards
      MyoroCardWidgetShowcaseScreenThemeExtension.builder(textTheme),

      // Checkboxes
      const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension.builder(),

      // Dividers
      MyoroResizeDividerWidgetShowcaseScreenThemeExtension.builder(colorScheme),

      // Forms
      MyoroFormWidgetShowcaseScreenThemeExtension.builder(),

      // Graphs
      MyoroPieGraphWidgetShowcaseScreenThemeExtension.builder(),

      // Inputs
      MyoroInputWidgetShowcaseScreenThemeExtension.builder(),

      // Modals
      MyoroDialogModalWidgetShowcaseScreenThemeExtension.builder(),
      const MyoroModalWidgetShowcaseScreenThemeExtension.builder(),

      // Pickers
      const MyoroImagePickerWidgetShowcaseScreenThemeExtension.builder(),

      // Screens
      const MyoroScreenWidgetShowcaseScreenThemeExtension.builder(),

      // Scrollables
      MyoroScrollablesWidgetShowcaseScreenThemeExtension.builder(colorScheme),

      // Sliders
      const MyoroSlidersWidgetShowcaseScreenThemeExtension.builder(),
      // ######################################
    ];
  }
}
