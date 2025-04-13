import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List] of [ThemeExtension]s for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ..._createMyoroAppBarThemeExtensions(colorScheme),
    ..._createMyoroButtonThemeExtensions(colorScheme, textTheme),
    ..._createMyoroCardThemeExtensions(colorScheme, textTheme),
    ..._createMyoroCarouselThemeExtensions(),
    ..._createMyoroCheckboxThemeExtensions(colorScheme, textTheme),
    ..._createMyoroDividerThemeExtensions(colorScheme),
    ..._createMyoroDrawerThemeExtension(colorScheme, textTheme),
    ..._createMyoroDropdownThemeExtensions(textTheme),
    ..._createMyoroFormThemeExtensions(),
    ..._createMyoroGraphThemeExtensions(colorScheme, textTheme),
    ..._createMyoroInputThemeExtensions(colorScheme, textTheme),
    ..._createMyoroLayoutBuilderThemeExtensions(),
    ..._createMyoroLoaderThemeExtensions(colorScheme),
    ..._createMyoroMaterialAppThemeExtensions(),
    ..._createMyoroMenuThemeExtensions(colorScheme, textTheme),
    ..._createMyoroModalThemeExtensions(colorScheme, textTheme),
    ..._createMyoroRadioThemeExtensions(colorScheme, textTheme),
    ..._createMyoroResolverThemeExtensions(),
    ..._createMyoroScreenThemeExtensions(),
    ..._createMyoroSliderThemeExtensions(textTheme),
    ..._createMyoroSnackBarThemeExtensions(colorScheme, textTheme),
    ..._createMyoroTableThemeExtensions(colorScheme, textTheme),
    ..._createMyoroTooltipThemeExtensions(),
  ];
}

List<ThemeExtension> _createMyoroAppBarThemeExtensions(
  ColorScheme colorScheme,
) {
  return [MyoroAppBarThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createMyoroButtonThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroHoverButtonThemeExtension.builder(colorScheme),
    MyoroIconTextHoverButtonThemeExtension.builder(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createMyoroCardThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [MyoroCardThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createMyoroCarouselThemeExtensions() {
  return const [MyoroCarouselThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroCheckboxThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroCheckboxThemeExtension.builder(colorScheme, textTheme),
    const MyoroGroupCheckboxThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createMyoroDividerThemeExtensions(
  ColorScheme colorScheme,
) {
  return [
    MyoroBasicDividerThemeExtension.builder(colorScheme),
    MyoroResizeDividerThemeExtension.builder(colorScheme),
  ];
}

List<ThemeExtension> _createMyoroDrawerThemeExtension(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [MyoroDrawerThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createMyoroDropdownThemeExtensions(TextTheme textTheme) {
  return const [MyoroDropdownThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroFormThemeExtensions() {
  return const [MyoroFormThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroGraphThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroBarGraphThemeExtension.builder(colorScheme, textTheme),
    MyoroPieGraphThemeExtension.builder(colorScheme),
  ];
}

List<ThemeExtension> _createMyoroInputThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    const MyoroDatePickerInputThemeExtension.builder(),
    MyoroInputThemeExtension.builder(colorScheme, textTheme),
    MyoroSearchInputThemeExtension.builder(colorScheme),
  ];
}

List<ThemeExtension> _createMyoroLayoutBuilderThemeExtensions() {
  return const [MyoroLayoutBuilderThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroLoaderThemeExtensions(
  ColorScheme colorScheme,
) {
  return [MyoroCircularLoaderThemeExtension.builder(colorScheme)];
}

List<ThemeExtension> _createMyoroMaterialAppThemeExtensions() {
  return const [MyoroMaterialAppThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroMenuThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [MyoroMenuThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createMyoroModalThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroModalThemeExtension.builder(colorScheme, textTheme),
    MyoroDialogModalThemeExtension.builder(textTheme),
  ];
}

List<ThemeExtension> _createMyoroRadioThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroRadioThemeExtension.builder(colorScheme, textTheme),
    const MyoroGroupRadioThemeExtension.builder(),
  ];
}

List<ThemeExtension> _createMyoroResolverThemeExtensions() {
  return const [MyoroResolverThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroScreenThemeExtensions() {
  return const [MyoroScreenThemeExtension.builder()];
}

List<ThemeExtension> _createMyoroSliderThemeExtensions(TextTheme textTheme) {
  return [MyoroSliderThemeExtension.builder(textTheme)];
}

List<ThemeExtension> _createMyoroSnackBarThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    const MyoroSnackBarContainerThemeExtension.builder(),
    MyoroSnackBarThemeExtension.builder(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createMyoroTableThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [MyoroTableV2ThemeExtension.builder(colorScheme, textTheme)];
}

List<ThemeExtension> _createMyoroTooltipThemeExtensions() {
  return const [MyoroTooltipThemeExtension.builder()];
}
