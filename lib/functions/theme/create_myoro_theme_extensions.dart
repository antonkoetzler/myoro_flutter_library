import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to createMyoro the [List<ThemeExtension>] for [createMyoroMyoroThemeData]'s [ThemeData].
List<ThemeExtension> createMyoroThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    ...createMyoroAppBarThemeExtensions(colorScheme),
    ...createMyoroButtonThemeExtensions(colorScheme, textTheme),
    ...createMyoroCardThemeExtensions(colorScheme, textTheme),
    ...createMyoroCarouselThemeExtensions(),
    ...createMyoroCheckboxThemeExtensions(colorScheme, textTheme),
    ...createMyoroDividerThemeExtensions(colorScheme),
    ...createMyoroDrawerThemeExtension(colorScheme, textTheme),
    ...createMyoroDropdownThemeExtensions(textTheme),
    ...createMyoroFormThemeExtensions(),
    ...createMyoroGraphThemeExtensions(colorScheme, textTheme),
    ...createMyoroInputThemeExtensions(colorScheme, textTheme),
    ...createMyoroLayoutBuilderThemeExtensions(),
    ...createMyoroLoaderThemeExtensions(colorScheme),
    ...createMyoroMaterialAppThemeExtensions(),
    ...createMyoroMenuThemeExtensions(colorScheme, textTheme),
    ...createMyoroModalThemeExtensions(colorScheme, textTheme),
    ...createMyoroRadioThemeExtensions(colorScheme, textTheme),
    ...createMyoroResolverThemeExtensions(),
    ...createMyoroScreenThemeExtensions(),
    ...createMyoroSliderThemeExtensions(textTheme),
    ...createMyoroSnackBarThemeExtensions(colorScheme, textTheme),
    ...createMyoroTableThemeExtensions(colorScheme, textTheme),
    ...createMyoroTooltipThemeExtensions(),
  ];
}

List<ThemeExtension> createMyoroAppBarThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroAppBarThemeExtension(
      primaryColor: colorScheme.primary,
      contentPadding: const EdgeInsets.all(10),
    ),
  ];
}

List<ThemeExtension> createMyoroButtonThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroHoverButtonThemeExtension(
      primaryColor: colorScheme.primary,
      onPrimaryColor: colorScheme.onPrimary,
      borderRadius: MyoroDecorationHelper.borderRadius,
      bordered: false,
    ),
    MyoroIconTextHoverButtonThemeExtension(
      primaryColor: colorScheme.primary,
      onPrimaryColor: colorScheme.onPrimary,
      contentPadding: const EdgeInsets.all(5),
      textStyle: textTheme.bodyMedium!,
      textMaxLines: 1,
      textOverflow: TextOverflow.ellipsis,
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
  ];
}

List<ThemeExtension> createMyoroCardThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroCardThemeExtension(
      backgroundColor: colorScheme.onPrimary.withValues(alpha: 0.1),
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      padding: const EdgeInsets.all(10),
      titleCardSpacing: 10,
      textStyle: textTheme.titleMedium!,
    ),
  ];
}

List<ThemeExtension> createMyoroCarouselThemeExtensions() {
  return const [
    MyoroCarouselThemeExtension(
      traversalButtonBordered: true,
      previousItemButtonIcon: Icons.keyboard_arrow_left,
      nextItemButtonIcon: Icons.keyboard_arrow_right,
    ),
  ];
}

List<ThemeExtension> createMyoroCheckboxThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroCheckboxThemeExtension(
      activeColor: colorScheme.onPrimary,
      checkColor: colorScheme.primary,
      hoverColor: MyoroColorDesignSystem.transparent,
      focusColor: MyoroColorDesignSystem.transparent,
      splashRadius: 0,
      labelTextStyle: textTheme.headlineSmall!,
      spacing: 5,
    ),
    const MyoroGroupCheckboxThemeExtension(
      direction: Axis.horizontal,
      spacing: 5,
      runSpacing: 5,
    ),
  ];
}

List<ThemeExtension> createMyoroDividerThemeExtensions(
  ColorScheme colorScheme,
) {
  return [
    MyoroBasicDividerThemeExtension(
      color: colorScheme.onPrimary,
      shortValue: kMyoroBorderLength,
      longValue: double.infinity,
    ),
    MyoroResizeDividerThemeExtension(
      secondary: colorScheme.onPrimary,
      resizeButtonShortValue: 8,
      resizeButtonLongValue: 8,
      resizeButtonBorderRadius: MyoroDecorationHelper.borderRadius,
    ),
  ];
}

List<ThemeExtension> createMyoroDropdownThemeExtensions(TextTheme textTheme) {
  return const [
    MyoroDropdownThemeExtension(
      inputStyle: MyoroInputStyleEnum.outlined,
      inputDropdownSpacing: 10,
      menuMaxHeight: 300,
    ),
  ];
}

List<ThemeExtension> createMyoroDrawerThemeExtension(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
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
      titleContentDividerPadding: const EdgeInsets.only(top: 4, bottom: 10),
      titleTextStyle: textTheme.titleLarge!,
      closeButtonDrawerIcon: Icons.keyboard_arrow_left,
      closeButtonEndDrawerIcon: Icons.keyboard_arrow_right,
      closeButtonBackgroundColor: colorScheme.primary,
      closeButtonBordered: true,
    ),
  ];
}

List<ThemeExtension> createMyoroFormThemeExtensions() {
  return const [MyoroFormThemeExtension()];
}

List<ThemeExtension> createMyoroGraphThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroBarGraphThemeExtension(
      border: Border.all(width: 2, color: colorScheme.onPrimary),
      barColor: colorScheme.onPrimary,
      barBorderRadius: BorderRadius.zero,
      sideTitleTextStyle: textTheme.bodySmall!,
      sideTitleInterval: kMyoroGraphSideTitleInterval,
      verticalSideTitleReversedSize: kMyoroGraphVerticalSideTitleReversedSize,
      horizontalSideTitleReversedSize:
          kMyoroGraphHorizontalSideTitleReversedSize,
    ),
    MyoroPieGraphThemeExtension(
      itemColor: colorScheme.onPrimary,
      itemRadius: 200,
    ),
  ];
}

List<ThemeExtension> createMyoroInputThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    const MyoroDatePickerInputThemeExtension(),
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
      primaryColor: colorScheme.primary,
      errorBorderColor: colorScheme.error,
      borderRadius: MyoroDecorationHelper.borderRadius,
      isDense: true,
      cursorHeight: 20,
      disabledOpacity: 0.5,
      inputTextStyle: textTheme.bodyMedium!,
      labelTextStyle: textTheme.headlineSmall!,
      labelBehavior: FloatingLabelBehavior.always,
      spacing: 10,
      clearTextButtonPadding: const EdgeInsets.fromLTRB(5, 5, 6.5, 5),
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

List<ThemeExtension> createMyoroLayoutBuilderThemeExtensions() {
  return const [MyoroLayoutBuilderThemeExtension()];
}

List<ThemeExtension> createMyoroLoaderThemeExtensions(ColorScheme colorScheme) {
  return [
    MyoroCircularLoaderThemeExtension(color: colorScheme.onPrimary, size: 25),
  ];
}

List<ThemeExtension> createMyoroMaterialAppThemeExtensions() {
  return const [MyoroMaterialAppThemeExtension()];
}

List<ThemeExtension> createMyoroMenuThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroMenuThemeExtension(
      primaryColor: colorScheme.primary,
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      borderRadius: MyoroDecorationHelper.inputBorderRadius,
      searchBarPadding: const EdgeInsets.all(10),
      searchBarInputStyle: MyoroInputStyleEnum.outlined,
      itemBorderRadius: BorderRadius.zero,
      dialogTextStyle: textTheme.bodyMedium!,
    ),
  ];
}

List<ThemeExtension> createMyoroModalThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  const width = 300.0;
  const height = 400.0;

  return [
    MyoroModalThemeExtension(
      primaryColor: colorScheme.primary,
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

List<ThemeExtension> createMyoroRadioThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroRadioThemeExtension(
      activeColor: colorScheme.onPrimary,
      hoverColor: colorScheme.onPrimary.withValues(alpha: 0.3),
      labelTextStyle: textTheme.headlineSmall!,
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

List<ThemeExtension> createMyoroResolverThemeExtensions() {
  return const [MyoroResolverThemeExtension()];
}

List<ThemeExtension> createMyoroScreenThemeExtensions() {
  return const [MyoroScreenThemeExtension()];
}

List<ThemeExtension> createMyoroSliderThemeExtensions(TextTheme textTheme) {
  return [
    MyoroSliderThemeExtension(
      labelTextStyle: textTheme.headlineSmall!,
      sliderPadding: EdgeInsets.zero,
      indicatorTextStyle: textTheme.bodySmall!,
      indicatorTextAlignment: TextAlign.center,
    ),
  ];
}

List<ThemeExtension> createMyoroSnackBarThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    const MyoroSnackBarContainerThemeExtension(
      primaryColor: MyoroColorDesignSystem.transparent,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.zero,
      elevation: 0,
      dismissDirection: DismissDirection.none,
      duration: Duration(seconds: 3),
    ),
    MyoroSnackBarThemeExtension(
      primaryColor: colorScheme.primary,
      standardBorderColor: colorScheme.onPrimary,
      attentionBorderColor: MyoroColorDesignSystem.attention,
      successBorderColor: MyoroColorDesignSystem.success,
      errorBorderColor: MyoroColorDesignSystem.error,
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

List<ThemeExtension> createMyoroTableThemeExtensions(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [
    MyoroTableThemeExtension(
      decoration: BoxDecoration(
        color: colorScheme.primary,
        border: Border.all(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
        borderRadius: MyoroDecorationHelper.borderRadius,
      ),
      titleRowHeight: 45,
      titleRowCellMinWidth: 50,
      contentPadding: const EdgeInsets.all(10),
      columnSpacing: 5,
      tableFooterSpacing: 15,
      emptyMessageTextStyle: textTheme.titleMedium!,
      titleTextStyle: textTheme.titleSmall!,
      errorMessageHeaderTextStyle: textTheme.titleMedium!.withColor(
        colorScheme.error,
      ),
      errorMessageErrorTextStyle: textTheme.bodyMedium!.withColor(
        colorScheme.error,
      ),
      buttonConfiguration: const MyoroHoverButtonConfiguration(bordered: true),
      messageSpacing: 20,
      footerSpacing: 5,
      titleColumnSpacing: 5,
      rowsCellSpacing: 3,
      rowsButtonConfiguration: MyoroHoverButtonConfiguration(
        onPrimaryColor: colorScheme.onPrimary.withValues(alpha: 0.3),
        borderRadius: BorderRadius.zero,
        primaryColor: MyoroColorDesignSystem.transparent,
      ),
    ),
  ];
}

List<ThemeExtension> createMyoroTooltipThemeExtensions() {
  return const [
    MyoroTooltipThemeExtension(waitDuration: kMyoroTooltipWaitDuration),
  ];
}
