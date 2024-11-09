import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List<ThemeExtension>] for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ...createAppBarThemeExtensions(),
    ...createBodyThemeExtensions(),
    ...createButtonThemeExtensions(colorScheme, textTheme),
    ...createDividerThemeExtensions(colorScheme),
    ...createMaterialAppThemeExtensions(),
    ...createScreenThemeExtensions(),
    ...createScrollableThemeExtensions(),
    ...createSliderThemeExtensions(textTheme),
  ];
}

List<ThemeExtension> createAppBarThemeExtensions() {
  return [
    const MyoroAppBarThemeExtension(
      contentPadding: EdgeInsets.fromLTRB(10, 10, 5, 10),
    ),
  ];
}

List<ThemeExtension> createBodyThemeExtensions() {
  return [
    const MyoroBodyThemeExtension(),
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

List<ThemeExtension> createMaterialAppThemeExtensions() {
  return [
    const MyoroMaterialAppThemeExtension(),
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
