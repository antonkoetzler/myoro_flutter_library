import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the default [ThemeExtension]s for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    // App Bar
    MyoroAppBarThemeExtension.builder(colorScheme),

    // Accordion
    MyoroAccordionThemeExtension.builder(isDarkMode, colorScheme, textTheme),

    // Buttons
    MyoroButtonThemeExtension.builder(),
    MyoroIconTextButtonThemeExtension.builder(),

    // Cards
    MyoroCardThemeExtension.builder(colorScheme, textTheme),

    // Carousel
    const MyoroCarouselThemeExtension.builder(),

    // Checkboxes
    MyoroCheckboxThemeExtension.builder(colorScheme, textTheme),
    const MyoroGroupCheckboxThemeExtension.builder(),

    // Dividers
    MyoroBasicDividerThemeExtension.builder(colorScheme),
    MyoroResizeDividerThemeExtension.builder(MyoroBasicDividerThemeExtension.builder(colorScheme), colorScheme),

    // Drawer
    MyoroDrawerThemeExtension.builder(colorScheme, textTheme),

    // Dropdowns
    MyoroDropdownThemeExtension.builder(colorScheme),

    // Feedback
    MyoroFeedbackThemeExtension.builder(textTheme),

    // Graphs
    MyoroBarGraphThemeExtension.builder(colorScheme, textTheme),
    MyoroPieGraphThemeExtension.builder(colorScheme),

    // Inputs
    MyoroInputThemeExtension.builder(colorScheme, textTheme),
    MyoroSearchInputThemeExtension.builder(colorScheme),

    // Loaders
    MyoroCircularLoaderThemeExtension.builder(colorScheme),

    // Menus
    MyoroMenuThemeExtension.builder(colorScheme, textTheme),

    // Modals
    MyoroModalThemeExtension.builder(colorScheme, textTheme),
    MyoroDialogModalThemeExtension.builder(textTheme),

    // Pickers
    MyoroFilePickerThemeExtension.builder(textTheme),
    MyoroImagePickerThemeExtension.builder(colorScheme),

    // Radios
    MyoroRadioThemeExtension.builder(colorScheme, textTheme),
    const MyoroGroupRadioThemeExtension.builder(),

    // Sliders
    MyoroSliderThemeExtension.builder(textTheme),

    // Snack Bars
    MyoroSnackBarThemeExtension.builder(colorScheme, textTheme),
    const MyoroSnackBarContainerThemeExtension.builder(),

    // Tables
    MyoroTableThemeExtension.builder(colorScheme, textTheme),

    // Tab Views
    MyoroTabViewThemeExtension.builder(colorScheme, textTheme),

    // Tooltips
    const MyoroTooltipThemeExtension.builder(),
  ];
}
