import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List] of [ThemeExtension]s for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ..._createAccordionThemeExtensions(colorScheme, textTheme),
    ..._createAppThemeExtensions(),
    ..._createAppBarThemeExtensions(colorScheme),
    ..._createButtonThemeExtensions(isDarkMode, colorScheme, textTheme),
    ..._createCardThemeExtensions(colorScheme, textTheme),
    ..._createCarouselThemeExtensions(),
    ..._createCheckboxThemeExtensions(colorScheme, textTheme),
    ..._createDividerThemeExtensions(colorScheme),
    ..._createDrawerThemeExtension(colorScheme, textTheme),
    ..._createDropdownThemeExtensions(colorScheme),
    ..._createFeedbackThemeExtensions(textTheme),
    ..._createFormThemeExtensions(),
    ..._createGraphThemeExtensions(colorScheme, textTheme),
    ..._createInputThemeExtensions(colorScheme, textTheme),
    ..._createLayoutBuilderThemeExtensions(),
    ..._createLoaderThemeExtensions(colorScheme),
    ..._createMenuThemeExtensions(colorScheme, textTheme),
    ..._createModalThemeExtensions(colorScheme, textTheme),
    ..._createPickerThemeExtensions(colorScheme, textTheme),
    ..._createRadioThemeExtensions(colorScheme, textTheme),
    ..._createScreenThemeExtensions(),
    ..._createSliderThemeExtensions(textTheme),
    ..._createSnackBarThemeExtensions(colorScheme, textTheme),
    ..._createTabViewThemeExtensions(colorScheme, textTheme),
    ..._createTableThemeExtensions(colorScheme, textTheme),
    ..._createTooltipThemeExtensions(),
  ];
}

List<ThemeExtension> _createAccordionThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroAccordionThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createAppThemeExtensions() {
  return const [MyoroAppThemeExtension.builder()];
}

List<ThemeExtension> _createAppBarThemeExtensions(ColorScheme colorScheme) {
  return [MyoroAppBarThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createButtonThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroButtonThemeExtension.builder(isDarkMode, colorScheme),
    MyoroIconTextButtonThemeExtension.builder(textTheme),
  ];
}

List<ThemeExtension> _createCardThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroCardThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createCarouselThemeExtensions() {
  return const [MyoroCarouselThemeExtension.builder()];
}

List<ThemeExtension> _createCheckboxThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroCheckboxThemeExtension.builder(colorScheme, textTheme),
    const MyoroGroupCheckboxThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createDividerThemeExtensions(ColorScheme colorScheme) {
  return [MyoroBasicDividerThemeExtension.builder(colorScheme), MyoroResizeDividerThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createDrawerThemeExtension(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroDrawerThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createDropdownThemeExtensions(ColorScheme colorScheme) {
  return [MyoroDropdownsThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createFeedbackThemeExtensions(TextTheme textTheme) {
  return [MyoroFeedbackThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createFormThemeExtensions() {
  return const [MyoroFormThemeExtension.builder()];
}

List<ThemeExtension> _createGraphThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroBarGraphThemeExtension.builder(colorScheme, textTheme),
    MyoroPieGraphThemeExtension.builder(colorScheme),
  ];
}

List<ThemeExtension> _createInputThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    const MyoroDatePickerInputThemeExtension.builder(),
    MyoroInputThemeExtension.builder(colorScheme, textTheme),
    MyoroSearchInputThemeExtension.builder(colorScheme),
    const MyoroTimePickerInputThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createLayoutBuilderThemeExtensions() {
  return const [MyoroLayoutBuilderThemeExtension.builder()];
}

List<ThemeExtension> _createLoaderThemeExtensions(ColorScheme colorScheme) {
  return [MyoroCircularLoaderThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createMenuThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroMenuThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createModalThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroModalThemeExtension.builder(colorScheme, textTheme), MyoroDialogModalThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createPickerThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroFilePickerThemeExtension.builder(textTheme), MyoroImagePickerThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createRadioThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroRadioThemeExtension.builder(colorScheme, textTheme), const MyoroGroupRadioThemeExtension.builder()];
}

List<ThemeExtension> _createScreenThemeExtensions() {
  return const [MyoroScreenThemeExtension.builder()];
}

List<ThemeExtension> _createSliderThemeExtensions(TextTheme textTheme) {
  return [MyoroSlidersThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createSnackBarThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    const MyoroSnackBarContainerThemeExtension.builder(),
    MyoroSnackBarThemeExtension.builder(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createTabViewThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroTabViewThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createTableThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroTableThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createTooltipThemeExtensions() {
  return const [MyoroTooltipThemeExtension.builder()];
}
