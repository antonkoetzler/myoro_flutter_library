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
      const ColorDropdownWidgetShowcaseOptionThemeExtension.builder(),
      const IconWidgetShowcaseOptionThemeExtension.builder(),
      const MouseCursorDropdownWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension.builder(),
      const MyoroSnackBarTypeEnumWidgetShowcaseOptionThemeExtension.builder(),
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

      // TODO: Make sure all widget showcases have a [ThemeExtension].
      // ########## Widget showcases ##########
      // Cards
      MyoroCardWidgetShowcaseThemeExtension.builder(textTheme),

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
      // ######################################
    ];
  }
}
