import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List<ThemeExtension>] for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ..._createAppBarThemeExtensions(),
    ..._createBodyThemeExtensions(),
    ..._createButtonThemeExtensions(colorScheme, textTheme),
    ..._createDividerThemeExtensions(colorScheme),
    ..._createMaterialAppThemeExtensions(),
    ..._createScreenThemeExtensions(),
    ..._createScrollableThemeExtensions(),
  ];
}

List<ThemeExtension> _createAppBarThemeExtensions() {
  return [
    const MyoroAppBarThemeExtension(
      contentPadding: EdgeInsets.fromLTRB(10, 10, 5, 10),
    ),
  ];
}

List<ThemeExtension> _createBodyThemeExtensions() {
  return [
    const MyoroBodyThemeExtension(),
  ];
}

List<ThemeExtension> _createButtonThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroHoverButtonThemeExtension(
      contentColor: colorScheme.onPrimary,
      backgroundColor: Colors.transparent,
      borderRadius: kBorderRadius,
      bordered: false,
    ),
    MyoroIconTextHoverButtonThemeExtension(
      backgroundColor: colorScheme.primary,
      contentColor: colorScheme.onPrimary,
      contentPadding: const EdgeInsets.all(5),
      textStyle: textTheme.bodyMedium!,
      textAlign: TextAlign.left,
      spacing: 10,
    ),
  ];
}

List<ThemeExtension> _createDividerThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroBasicDividerThemeExtension(
      color: colorScheme.onPrimary,
      shortValue: 2,
      longValue: double.infinity,
    ),
    MyoroResizeDividerThemeExtension(
      secondary: colorScheme.onPrimary,
      resizeButtonShortValue: 10,
      resizeButtonLongValue: 30,
      resizeButtonBorderRadius: kBorderRadius,
    ),
  ];
}

List<ThemeExtension> _createMaterialAppThemeExtensions() {
  return [
    const MyoroMaterialAppThemeExtension(),
  ];
}

List<ThemeExtension> _createScreenThemeExtensions() {
  return const [
    MyoroScreenThemeExtension(),
  ];
}

List<ThemeExtension> _createScrollableThemeExtensions() {
  return const [
    MyoroScrollableThemeExtension(
      direction: Axis.vertical,
    ),
  ];
}
