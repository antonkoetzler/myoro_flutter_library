import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List<ThemeExtension>] for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ...createAppBarThemeExtensions(),
    ...createAutocompleteThemeExtensions(),
    ...createBodyThemeExtensions(),
    ...createButtonThemeExtensions(colorScheme, textTheme),
    ...createDividerThemeExtensions(colorScheme),
    ...createFormThemeExtensions(),
    ...createInputThemeExtensions(colorScheme),
    ...createMaterialAppThemeExtensions(),
    ...createResolverThemeExtensions(),
    ...createScreenThemeExtensions(),
    ...createScrollableThemeExtensions(),
    ...createSliderThemeExtensions(textTheme),
  ];
}

List<ThemeExtension> createAppBarThemeExtensions() {
  return const [
    MyoroAppBarThemeExtension(
      contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 5),
    ),
  ];
}

List<ThemeExtension> createAutocompleteThemeExtensions() {
  return const [
    MyoroAutocompleteThemeExtension(),
  ];
}

List<ThemeExtension> createBodyThemeExtensions() {
  return const [
    MyoroBodyThemeExtension(),
  ];
}

List<ThemeExtension> createButtonThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
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
      textMaxLines: 1,
      textOverflow: TextOverflow.ellipsis,
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
  ];
}

List<ThemeExtension> createDividerThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroBasicDividerThemeExtension(
      color: colorScheme.onPrimary,
      shortValue: kBorderLength,
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

List<ThemeExtension> createFormThemeExtensions() {
  return const [
    MyoroFormThemeExtension(),
  ];
}

List<ThemeExtension> createInputThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroInputThemeExtension(
      underlinedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: kBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      outlinedBorder: OutlineInputBorder(
        borderRadius: kBorderRadius,
        borderSide: BorderSide(
          width: kBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
    ),
  ];
}

List<ThemeExtension> createMaterialAppThemeExtensions() {
  return const [
    MyoroMaterialAppThemeExtension(),
  ];
}

List<ThemeExtension> createResolverThemeExtensions() {
  return const [
    MyoroResolverThemeExtension(),
  ];
}

List<ThemeExtension> createScreenThemeExtensions() {
  return const [
    MyoroScreenThemeExtension(),
  ];
}

List<ThemeExtension> createScrollableThemeExtensions() {
  return const [
    MyoroScrollableThemeExtension(
      direction: Axis.vertical,
    ),
  ];
}

List<ThemeExtension> createSliderThemeExtensions(TextTheme textTheme) {
  return [
    MyoroSliderThemeExtension(
      labelTextStyle: textTheme.titleSmall!.copyWith(fontSize: MyoroFontSizeEnum.tiny.size),
      sliderPadding: EdgeInsets.zero,
      labelSliderSpacing: 5,
    ),
  ];
}
