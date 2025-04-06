import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

List<ThemeExtension> createThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ..._createAppThemeExtensions(textTheme),
    ..._createWidgetShowcaseThemeExtensions(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createAppThemeExtensions(TextTheme textTheme) {
  return [
    StoryboardAppBarThemeExtension.builder(textTheme),
    StoryboardBodyThemeExtension.builder(textTheme),
  ];
}

List<ThemeExtension> _createWidgetShowcaseThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    WidgetShowcaseThemeExtension.builder(),
    ..._createAppBarWidgetShowcaseThemeExtensions(textTheme),
    ..._createButtonWidgetShowcaseThemeExtensions(colorScheme, textTheme),
    ..._createCardWidgetShowcaseThemeExtensions(textTheme),
    ..._createCarouselWidgetShowcaseThemeExtensions(),
    ..._createCheckboxWidgetShowcaseThemeExtensions(),
    ..._createDividerWidgetShowcaseThemeExtensions(colorScheme),
    ..._createDrawerWidgetShowcaseThemeExtensions(),
    ..._createDropdownWidgetShowcaseThemeExtensions(),
    ..._createFormWidgetShowcaseThemeExtensions(textTheme),
    ..._createGraphWidgetShowcaseThemeExtensions(),
    ..._createInputWidgetShowcaseThemeExtensions(textTheme),
    ..._createLayoutBuilderWidgetShowcaseThemeExtensions(textTheme),
    ..._createLoaderWidgetShowcaseThemeExtensions(),
    ..._createMaterialAppWidgetShowcaseThemeExtensions(colorScheme, textTheme),
    ..._createMenuWidgetShowcaseThemeExtensions(textTheme),
    ..._createModalWidgetShowcaseThemeExtensions(textTheme),
    ..._createRadioWidgetShowcaseThemeExtensions(),
    ..._createResolverWidgetShowcaseThemeExtensions(),
    ..._createScreenWidgetShowcaseThemeExtensions(textTheme),
    ..._createSliderWidgetShowcaseThemeExtensions(colorScheme),
    ..._createSnackBarWidgetShowcaseThemeExtensions(),
    ..._createTableWidgetShowcaseThemeExtensions(),
    ..._createTooltipWidgetShowcaseThemeExtensions(textTheme),
  ];
}

List<ThemeExtension> _createAppBarWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroAppBarWidgetShowcaseThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createButtonWidgetShowcaseThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroHoverButtonWidgetShowcaseThemeExtension.builder(
      colorScheme,
      textTheme,
    ),
  ];
}

List<ThemeExtension> _createCardWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroCardWidgetShowcaseThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createCarouselWidgetShowcaseThemeExtensions() {
  return const [MyoroCarouselWidgetShowcaseThemeExtension.builder()];
}

List<ThemeExtension> _createCheckboxWidgetShowcaseThemeExtensions() {
  return const [MyoroCheckboxWidgetShowcaseThemeExtension.builder()];
}

List<ThemeExtension> _createDividerWidgetShowcaseThemeExtensions(
  ColorScheme colorScheme,
) {
  return [
    const MyoroBasicDividerWidgetShowcaseThemeExtension.builder(),
    MyoroResizeDividerWidgetShowcaseThemeExtension.builder(colorScheme),
  ];
}

List<ThemeExtension> _createDrawerWidgetShowcaseThemeExtensions() {
  return const [MyoroDrawerWidgetShowcaseThemeExtension.builder()];
}

List<ThemeExtension> _createDropdownWidgetShowcaseThemeExtensions() {
  return const [
    MyoroMultiDropdownWidgetShowcaseThemeExtension(),
    MyoroSingularDropdownWidgetShowcaseThemeExtension(),
  ];
}

List<ThemeExtension> _createFormWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroFormWidgetShowcaseThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createGraphWidgetShowcaseThemeExtensions() {
  return [
    const MyoroBarGraphWidgetShowcaseThemeExtension.builder(),
    MyoroPieGraphWidgetShowcaseThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createInputWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [
    const MyoroDatePickerInputWidgetShowcaseThemeExtension.builder(),
    MyoroInputWidgetShowcaseThemeExtension.builder(textTheme),
    const MyoroSearchInputWidgetShowcaseThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createLayoutBuilderWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroLayoutBuilderWidgetShowcaseThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createLoaderWidgetShowcaseThemeExtensions() {
  return const [MyoroCircularLoaderWidgetShowcaseThemeExtension.builder()];
}

List<ThemeExtension> _createMaterialAppWidgetShowcaseThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroMaterialAppWidgetShowcaseThemeExtension.builder(
      colorScheme,
      textTheme,
    ),
  ];
}

List<ThemeExtension> _createMenuWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroMenuWidgetShowcaseThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createModalWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [
    MyoroModalWidgetShowcaseThemeExtension.builder(textTheme),
    MyoroDialogModalWidgetShowcaseThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createRadioWidgetShowcaseThemeExtensions() {
  return const [
    MyoroGroupRadioWidgetShowcaseThemeExtension.builder(),
    MyoroRadioWidgetShowcaseThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createResolverWidgetShowcaseThemeExtensions() {
  return const [MyoroResolverWidgetShowcaseThemeExtension.builder()];
}

List<ThemeExtension> _createScreenWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroScreenWidgetShowcaseThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createSliderWidgetShowcaseThemeExtensions(
  ColorScheme colorScheme,
) {
  return [MyoroSliderWidgetShowcaseThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createSnackBarWidgetShowcaseThemeExtensions() {
  return const [MyoroSnackBarWidgetShowcaseThemeExtension.builder()];
}

List<ThemeExtension> _createTableWidgetShowcaseThemeExtensions() {
  return const [
    MyoroTableWidgetShowcaseThemeExtension.builder(),
    MyoroTableV2WidgetShowcaseThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createTooltipWidgetShowcaseThemeExtensions(
  TextTheme textTheme,
) {
  return [MyoroTooltipWidgetShowcaseThemeExtension.builder(textTheme)];
}
