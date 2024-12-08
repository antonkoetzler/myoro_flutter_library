import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [List<ThemeExtension>] for [createMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ...createAppBarThemeExtensions(),
    ...createBodyThemeExtensions(),
    ...createButtonThemeExtensions(colorScheme, textTheme),
    ...createCardThemeExtensions(colorScheme, textTheme),
    ...createCarouselThemeExtensions(),
    ...createCheckboxThemeExtensions(colorScheme, textTheme),
    ...createDividerThemeExtensions(colorScheme),
    ...createDrawerThemeExtension(colorScheme, textTheme),
    ...createDropdownThemeExtensions(),
    ...createFormThemeExtensions(),
    ...createGraphThemeExtensions(colorScheme, textTheme),
    ...createInputThemeExtensions(colorScheme, textTheme),
    ...createLoaderThemeExtensions(colorScheme),
    ...createMaterialAppThemeExtensions(),
    ...createMenuThemeExtensions(colorScheme, textTheme),
    ...createModalThemeExtensions(colorScheme, textTheme),
    ...createRadioThemeExtensions(colorScheme, textTheme),
    ...createResolverThemeExtensions(),
    ...createScreenThemeExtensions(),
    ...createScrollableThemeExtensions(),
    ...createSliderThemeExtensions(textTheme),
    ...createSnackBarThemeExtensions(colorScheme, textTheme),
    ...createTableThemeExtensions(colorScheme, textTheme),
    ...createTooltipThemeExtensions(),
  ];
}

List<ThemeExtension> createAppBarThemeExtensions() {
  return const [
    MyoroAppBarThemeExtension(
      contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 5),
    ),
  ];
}

List<ThemeExtension> createDropdownThemeExtensions() {
  return const [
    MyoroDropdownThemeExtension(
      inputStyle: MyoroInputStyleEnum.outlined,
      spacing: 10,
    ),
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
      backgroundColor: colorScheme.primary,
      borderRadius: MyoroDecorationHelper.borderRadius,
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

List<ThemeExtension> createCardThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroCardThemeExtension(
      backgroundColor: colorScheme.primary,
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      padding: const EdgeInsets.all(10),
      titleCardSpacing: 5,
      textStyle: textTheme.titleMedium!,
    ),
  ];
}

List<ThemeExtension> createCarouselThemeExtensions() {
  return const [
    MyoroCarouselThemeExtension(
      traversalButtonBordered: true,
      previousItemButtonIcon: Icons.keyboard_arrow_left,
      nextItemButtonIcon: Icons.keyboard_arrow_right,
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

List<ThemeExtension> createDrawerThemeExtension(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroDrawerThemeExtension(
      drawerPadding: const EdgeInsets.all(20),
      drawerContentPadding: const EdgeInsets.all(10),
      drawerShape: RoundedRectangleBorder(
        side: BorderSide(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      titleContentDividerPadding: const EdgeInsets.only(
        top: 4,
        bottom: 10,
      ),
      titleTextStyle: textTheme.titleLarge!,
      closeButtonDrawerIcon: Icons.keyboard_arrow_left,
      closeButtonEndDrawerIcon: Icons.keyboard_arrow_right,
      closeButtonBackgroundColor: colorScheme.primary,
      closeButtonBordered: true,
    ),
  ];
}

List<ThemeExtension> createFormThemeExtensions() {
  return const [
    MyoroFormThemeExtension(),
  ];
}

List<ThemeExtension> createGraphThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroBarGraphThemeExtension(
      border: Border.all(
        width: 2,
        color: colorScheme.onPrimary,
      ),
      barColor: colorScheme.onPrimary,
      barBorderRadius: BorderRadius.zero,
      sideTitleTextStyle: textTheme.bodySmall!,
      sideTitleInterval: kMyoroGraphSideTitleInterval,
      verticalSideTitleReversedSize: kMyoroGraphVerticalSideTitleReversedSize,
      horizontalSideTitleReversedSize: kMyoroGraphHorizontalSideTitleReversedSize,
    ),
    MyoroPieGraphThemeExtension(
      itemColor: colorScheme.onPrimary,
      itemRadius: 200,
    ),
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
      borderRadius: MyoroDecorationHelper.inputBorderRadius,
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      maxHeight: kMyoroMenuMaxSize.height,
      maxWidth: kMyoroMenuMaxSize.width,
      dialogTextStyle: textTheme.bodyMedium!,
    ),
  ];
}

List<ThemeExtension> createModalThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  const width = 300.0;
  const height = 400.0;

  return [
    MyoroModalThemeExtension(
      backgroundColor: colorScheme.primary,
      borderRadius: MyoroDecorationHelper.borderRadius,
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(
        minWidth: width,
        minHeight: height,
        maxWidth: width,
        maxHeight: height,
      ),
      spacing: 10,
      titleTextStyle: textTheme.titleSmall!,
      closeButtonIcon: Icons.close,
    ),
    MyoroDialogModalThemeExtension(
      textStyle: textTheme.bodyMedium!,
      footerButtonsSpacing: 10,
    ),
  ];
}

List<ThemeExtension> createRadioThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroRadioThemeExtension(
      activeColor: colorScheme.onPrimary,
      hoverColor: colorScheme.onPrimary.withOpacity(0.3),
      labelTextStyle: textTheme.bodySmall,
      spacing: 5,
      splashRadius: 15,
    ),
    const MyoroGroupRadioThemeExtension(
      direction: Axis.vertical,
      spacing: 5,
      runSpacing: 5,
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
      padding: EdgeInsets.zero,
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

List<ThemeExtension> createSnackBarThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    const MyoroSnackBarContainerThemeExtension(
      backgroundColor: MyoroColorTheme.transparent,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.zero,
      elevation: 0,
      dismissDirection: DismissDirection.none,
      duration: Duration(seconds: 3),
    ),
    MyoroSnackBarThemeExtension(
      backgroundColor: colorScheme.primary,
      standardBorderColor: colorScheme.onPrimary,
      attentionBorderColor: MyoroColorTheme.attention,
      successBorderColor: MyoroColorTheme.success,
      errorBorderColor: MyoroColorTheme.error,
      borderWidth: 2,
      borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      padding: const EdgeInsets.all(10),
      contentCloseButtonSpacing: 10,
      messageTextStyle: textTheme.bodySmall!,
      closeButtonIcon: Icons.close,
      closeButtonIconSize: 15,
    ),
  ];
}

List<ThemeExtension> createTableThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MyoroTableThemeExtension(
      backgroundColor: colorScheme.primary,
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      columnSpacing: 21,
      emptyTableTextStyle: textTheme.bodyMedium!,
      errorMessageTitleTextStyle: textTheme.titleMedium!,
      errorMessageErrorTextStyle: textTheme.bodySmall!,
      titleColumnsCellPadding: const EdgeInsets.symmetric(vertical: 5),
      titleColumnsCellSpacing: 5,
      titleColumnsCellTextStyle: textTheme.bodyMedium!,
      titleColumnsCellTextAlign: TextAlign.center,
      rowBackgroundHoverColor: colorScheme.onPrimary.withOpacity(0.1),
      rowBorderRadius: BorderRadius.zero,
    ),
  ];
}

List<ThemeExtension> createTooltipThemeExtensions() {
  return const [
    MyoroTooltipThemeExtension(
      waitDuration: kMyoroTooltipWaitDuration,
    ),
  ];
}
