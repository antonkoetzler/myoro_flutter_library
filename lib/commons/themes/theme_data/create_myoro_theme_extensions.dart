import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List<ThemeExtension>] for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ...createAppBarThemeExtensions(),
    ...createAutocompleteThemeExtensions(),
    ...createBodyThemeExtensions(),
    ...createButtonThemeExtensions(colorScheme, textTheme),
    ...createCheckboxThemeExtensions(colorScheme, textTheme),
    ...createDividerThemeExtensions(colorScheme),
    ...createFormThemeExtensions(),
    ...createInputThemeExtensions(colorScheme, textTheme),
    ...createLoaderThemeExtensions(colorScheme),
    ...createMaterialAppThemeExtensions(),
    ...createMenuThemeExtensions(colorScheme, textTheme),
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
    MyoroDropdownThemeExtension(),
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
      backgroundColor: MyoroColorTheme.transparent,
      borderRadius: MyoroDecorationHelper.borderRadius,
      bordered: false,
      tooltipWaitDuration: kMyoroTooltipWaitDuration,
    ),
    MyoroIconTextHoverButtonThemeExtension(
      backgroundColor: colorScheme.primary,
      contentColor: colorScheme.onPrimary,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      textStyle: textTheme.bodyMedium!,
      textAlign: TextAlign.left,
      textMaxLines: 1,
      textOverflow: TextOverflow.ellipsis,
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
  ];
}

List<ThemeExtension> createCheckboxThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroCheckboxThemeExtension(
      activeColor: colorScheme.onPrimary,
      checkColor: colorScheme.primary,
      hoverColor: MyoroColorTheme.transparent,
      focusColor: MyoroColorTheme.transparent,
      splashRadius: 0,
      labelTextStyle: textTheme.bodySmall!,
      spacing: 3,
    ),
    const MyoroGroupCheckboxThemeExtension(
      direction: Axis.horizontal,
      spacing: 5,
      runSpacing: 5,
    ),
  ];
}

List<ThemeExtension> createDividerThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroBasicDividerThemeExtension(
      color: colorScheme.onPrimary,
      shortValue: kMyoroBorderLength,
      longValue: double.infinity,
    ),
    MyoroResizeDividerThemeExtension(
      secondary: colorScheme.onPrimary,
      resizeButtonShortValue: 10,
      resizeButtonLongValue: 30,
      resizeButtonBorderRadius: MyoroDecorationHelper.borderRadius,
    ),
  ];
}

List<ThemeExtension> createFormThemeExtensions() {
  return const [
    MyoroFormThemeExtension(),
  ];
}

List<ThemeExtension> createInputThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroInputThemeExtension(
      underlinedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      outlinedBorder: OutlineInputBorder(
        borderRadius: MyoroDecorationHelper.inputBorderRadius,
        borderSide: BorderSide(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      backgroundColor: colorScheme.primary,
      errorBorderColor: colorScheme.error,
      borderRadius: MyoroDecorationHelper.borderRadius,
      isDense: true,
      cursorHeight: 20,
      disabledOpacity: 0.5,
      inputTextStyle: textTheme.bodyMedium!,
      labelTextStyle: textTheme.headlineSmall!,
      spacing: 10,
      clearTextButtonPadding: const EdgeInsets.all(5),
      clearTextButtonIcon: Icons.close,
    ),
    MyoroSearchInputThemeExtension(
      spacing: 10,
      searchButtonIcon: Icons.search,
      searchButtonBordered: true,
      searchButtonHoverColor: colorScheme.primary,
      searchButtonLoadingSize: 20,
    ),
  ];
}

List<ThemeExtension> createLoaderThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroCircularLoaderThemeExtension(
      color: colorScheme.onPrimary,
      size: 25,
    ),
  ];
}

List<ThemeExtension> createMaterialAppThemeExtensions() {
  return const [
    MyoroMaterialAppThemeExtension(),
  ];
}

List<ThemeExtension> createMenuThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroMenuThemeExtension(
      backgroundColor: colorScheme.primary,
      borderRadius: MyoroDecorationHelper.borderRadius,
      border: Border.all(
        width: 2,
        color: colorScheme.onPrimary,
      ),
      maxHeight: kMyoroMenuMaxSize.height,
      maxWidth: kMyoroMenuMaxSize.width,
      emptyMenuDialogTextStyle: textTheme.bodyMedium!,
    ),
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
      footerLabelTextStyle: textTheme.bodySmall!.copyWith(height: 0.5),
    ),
  ];
}
