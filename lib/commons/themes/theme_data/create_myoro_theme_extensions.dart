import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List<ThemeExtension>] for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ...createAppBarThemeExtensions(),
    ...createAutocompleteThemeExtensions(),
    ...createBodyThemeExtensions(),
    ...createButtonThemeExtensions(colorScheme, textTheme),
    ...createCheckboxThemeExtensions(textTheme),
    ...createDividerThemeExtensions(colorScheme),
    ...createFormThemeExtensions(),
    ...createInputThemeExtensions(colorScheme, textTheme),
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
      borderRadius: kMyoroBorderRadius,
      bordered: false,
      tooltipWaitDuration: kMyoroTooltipWaitDuration,
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

List<ThemeExtension> createCheckboxThemeExtensions(TextTheme textTheme) {
  return [
    MyoroCheckboxThemeExtension(
      hoverColor: MyoroColorTheme.transparent,
      focusColor: MyoroColorTheme.transparent,
      splashRadius: 0,
      labelTextStyle: textTheme.bodySmall!,
      spacing: 3,
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
      resizeButtonBorderRadius: kMyoroBorderRadius,
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
        borderRadius: kMyoroInputBorderRadius,
        borderSide: BorderSide(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
      isDense: true,
      cursorHeight: 20,
      inputTextStyle: textTheme.bodyMedium!,
      labelTextStyle: textTheme.headlineSmall!,
      labelSpacing: 5,
    ),
  ];
}

List<ThemeExtension> createMaterialAppThemeExtensions() {
  return const [
    MyoroMaterialAppThemeExtension(),
  ];
}

List<ThemeExtension> createMenuThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  const radius = Radius.circular(kMyoroBorderRadiusValue);
  final borderSide = BorderSide(width: 2, color: colorScheme.onPrimary);

  return [
    MyoroMenuThemeExtension(
      backgroundColor: colorScheme.primary,
      borderRadius: const BorderRadius.only(
        bottomLeft: radius,
        bottomRight: radius,
      ),
      border: Border(
        bottom: borderSide,
        left: borderSide,
        right: borderSide,
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
