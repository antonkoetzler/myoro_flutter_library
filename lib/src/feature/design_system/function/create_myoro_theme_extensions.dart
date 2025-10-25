import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the default [ThemeExtension]s for [createMyoroThemeData]'s [ThemeData]s.
List<ThemeExtension> createMyoroThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  final decorationThemeExtension = MyoroDecorationThemeExtension.builder(isDarkMode, colorScheme);

  return [
    decorationThemeExtension,
    ..._createAppBarThemeExtensions(colorScheme),
    ..._createAccordionThemeExtensions(isDarkMode, colorScheme, textTheme),
    ..._createButtonThemeExtensions(textTheme, decorationThemeExtension),
    ..._createCardThemeExtensions(colorScheme, textTheme),
    ..._createCarouselThemeExtensions(),
    ..._createCheckboxThemeExtensions(colorScheme, textTheme),
    ..._createDividerThemeExtensions(colorScheme),
    ..._createDrawerThemeExtensions(colorScheme, textTheme),
    ..._createDropdownThemeExtensions(colorScheme),
    ..._createFeedbackThemeExtensions(textTheme),
    ..._createGraphThemeExtensions(colorScheme, textTheme),
    ..._createIndexedStackThemeExtensions(colorScheme),
    ..._createInputThemeExtensions(isDarkMode, colorScheme, textTheme, decorationThemeExtension),
    ..._createLoaderThemeExtensions(colorScheme),
    ..._createMenuThemeExtensions(isDarkMode, colorScheme, textTheme, decorationThemeExtension),
    ..._createModalThemeExtensions(colorScheme, textTheme),
    ..._createPickerThemeExtensions(colorScheme, textTheme),
    ..._createRadioThemeExtensions(colorScheme, textTheme),
    ..._createScrollableThemeExtensions(colorScheme, textTheme),
    ..._createSliderThemeExtensions(textTheme),
    ..._createSnackBarThemeExtensions(colorScheme, textTheme),
    ..._createTableThemeExtensions(colorScheme, textTheme),
    ..._createTabViewThemeExtensions(colorScheme, textTheme),
    ..._createTooltipThemeExtensions(),
  ];
}

List<ThemeExtension> _createAppBarThemeExtensions(ColorScheme colorScheme) {
  return [MyoroAppBarThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createAccordionThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroAccordionThemeExtension.builder(isDarkMode, colorScheme, textTheme)];
}

List<ThemeExtension> _createButtonThemeExtensions(
  TextTheme textTheme,
  MyoroDecorationThemeExtension decorationThemeExtension,
) {
  return [
    MyoroButtonThemeExtension.builder(decorationThemeExtension),
    MyoroIconTextButtonThemeExtension.builder(textTheme, decorationThemeExtension),
  ];
}

List<ThemeExtension> _createCardThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroCardThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createCarouselThemeExtensions() {
  return [const MyoroCarouselThemeExtension.builder()];
}

List<ThemeExtension> _createCheckboxThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroCheckboxThemeExtension.builder(colorScheme, textTheme),
    const MyoroGroupCheckboxThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createDividerThemeExtensions(ColorScheme colorScheme) {
  final basicDividerThemeExtension = MyoroBasicDividerThemeExtension.builder(colorScheme);
  return [
    basicDividerThemeExtension,
    MyoroResizeDividerThemeExtension.builder(basicDividerThemeExtension, colorScheme),
  ];
}

List<ThemeExtension> _createDrawerThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroDrawerThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createDropdownThemeExtensions(ColorScheme colorScheme) {
  return [MyoroInputDropdownThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createFeedbackThemeExtensions(TextTheme textTheme) {
  return [MyoroFeedbackThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createGraphThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroBarGraphThemeExtension.builder(colorScheme, textTheme),
    MyoroPieGraphThemeExtension.builder(colorScheme),
  ];
}

List<ThemeExtension> _createIndexedStackThemeExtensions(ColorScheme colorScheme) {
  return [MyoroIndexedStackThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createInputThemeExtensions(
  bool isDarkMode,
  ColorScheme colorScheme,
  TextTheme textTheme,
  MyoroDecorationThemeExtension decorationThemeExtension,
) {
  return [
    MyoroCurrencyInputThemeExtension.builder(isDarkMode, colorScheme, textTheme, decorationThemeExtension),
    MyoroInputThemeExtension.builder(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createLoaderThemeExtensions(ColorScheme colorScheme) {
  return [MyoroCircularLoaderThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createMenuThemeExtensions(
  bool isDarkMode,
  ColorScheme colorScheme,
  TextTheme textTheme,
  MyoroDecorationThemeExtension decorationThemeExtension,
) {
  return [MyoroMenuThemeExtension.builder(isDarkMode, colorScheme, textTheme, decorationThemeExtension)];
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

List<ThemeExtension> _createScrollableThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroScrollableThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createSliderThemeExtensions(TextTheme textTheme) {
  return [MyoroSliderThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createSnackBarThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroSnackBarThemeExtension.builder(colorScheme, textTheme), MyoroSnackBarContainerThemeExtension.builder()];
}

List<ThemeExtension> _createTableThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroTableThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createTabViewThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [MyoroTabViewThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createTooltipThemeExtensions() {
  return [const MyoroTooltipThemeExtension.builder()];
}
