import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

List<ThemeExtension> createStoryboardThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ..._createAppThemeExtensions(textTheme),
    ..._createWidgetShowcaseThemeExtensions(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createAppThemeExtensions(TextTheme textTheme) {
  return [
    StoryboardAppBarThemeExtension(
      titleTextStyle: textTheme.titleMedium!,
      subtitleTextStyle: textTheme.bodySmall!,
      showWidgetOptionsButtonIcon: Icons.remove_red_eye,
      themeButtonIcon: Icons.sunny,
      buttonSpacing: 5,
    ),
    StoryboardBodyThemeExtension(
      widgetListingCategoryPadding: const EdgeInsets.all(5),
      widgetListingCategorySpacing: 5,
      widgetListingCategoryDividerPadding: const EdgeInsets.only(
        top: 1,
        left: 10,
        right: 10,
      ),
      widgetListingCategoryDividerShortValue: 1,
      widgetListingCategoryDropdownButtonTextStyle: textTheme.titleMedium!,
      widgetListingCategoryDropdownButtonUnopenedIcon: Icons.keyboard_arrow_right,
      widgetListingCategoryDropdownButtonOpenedIcon: Icons.keyboard_arrow_down,
      widgetListingCategoryWidgetButtonContentCentered: MainAxisAlignment.center,
      widgetListingCategoryWidgetButtonTextStyle: textTheme.bodySmall!,
    ),
  ];
}

List<ThemeExtension> _createWidgetShowcaseThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    WidgetShowcaseThemeExtension(
      widgetWrapperBackgroundColor: MyoroColorTheme.attention.withOpacity(0.1),
      widgetWrapperPadding: const EdgeInsets.all(20),
      widgetWrapperContentPadding: const EdgeInsets.all(20),
      widgetWrapperBorderRadius: MyoroDecorationHelper.borderRadius,
      widgetWrapperBorder: Border.all(
        width: 2,
        color: MyoroColorTheme.attention,
      ),
      widgetWrapperAlignment: Alignment.center,
      widgetOptionsPadding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      widgetOptionsDividerPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
    ),
    MyoroAppBarWidgetShowcaseThemeExtension(
      mockAppLogoIcon: Icons.people,
      mockAppTitleTextStyle: textTheme.titleMedium!,
      logoTitleSpacing: 5,
      mockMenuButtonIcon: Icons.menu,
    ),
    MyoroHoverButtonWidgetShowcaseThemeExtension(
      widgetContentPadding: const EdgeInsets.all(10),
      widgetContentTextStyle: textTheme.titleLarge!.copyWith(height: 0.8),
      colorDropdownitemPrimaryColor: colorScheme.primary,
      colorDropdownItemPadding: const EdgeInsets.all(10),
      colorDropdownItemColorSize: const Size(50, 50),
      colorDropdownItemColorTextStyle: textTheme.bodyMedium!,
      colorDropdownItemSpacing: 10,
      borderRadiusSliderMaxValue: 20,
      borderRadiusSliderMaxValueBordered: true,
    ),
    MyoroCardWidgetShowcaseThemeExtension(
      inputStyle: MyoroInputStyleEnum.outlined,
      titleOptionTextAlign: TextAlign.center,
      titleTextStyleOptionTextStyles: [
        ('Regular', textTheme.bodyMedium!),
        ('Italic', textTheme.headlineMedium!),
        ('Bold', textTheme.titleMedium!),
      ],
    ),
    const MyoroCarouselWidgetShowcaseThemeExtension(),
    const MyoroCheckboxWidgetShowcaseThemeExtension(
      labelTextStyleOptionWidth: 198,
    ),
    const MyoroBasicDividerWidgetShowcaseThemeExtension(
      buttonBordered: true,
    ),
    MyoroResizeDividerWidgetShowcaseThemeExtension(
      containerColor: colorScheme.onPrimary,
      areYouSillyPadding: const EdgeInsets.all(50),
    ),
    const MyoroDrawerWidgetShowcaseThemeExtension(
      buttonBordered: true,
      inputStyle: MyoroInputStyleEnum.outlined,
    ),
    MyoroDropdownWidgetShowcaseThemeExtension(
      dropdownItemColorSize: 50,
      dropdownItemTextStyle: textTheme.bodyMedium!,
      dropdownItemSpacing: 10,
      inputStyle: MyoroInputStyleEnum.outlined,
    ),
    MyoroFormWidgetShowcaseThemeExtension(
      widgetMainAxisAlignment: MainAxisAlignment.center,
      widgetInputStyle: MyoroInputStyleEnum.outlined,
      widgetSpacing: 10,
      submitButtonMainAxisAlignment: MainAxisAlignment.center,
      submitButtonBordered: true,
      resultTextStyle: textTheme.headlineLarge!,
      successColor: Colors.green,
      errorColor: Colors.red,
    ),
    const MyoroBarGraphWidgetShowcaseThemeExtension(),
    MyoroPieGraphWidgetShowcaseThemeExtension(
      centerWidgetBorderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      centerWidgetSize: 125,
    ),
    const MyoroDatePickerInputWidgetShowcaseThemeExtension(
      inputStyle: MyoroInputStyleEnum.outlined,
    ),
    MyoroLayoutBuilderWidgetShowcaseThemeExtension(
      textStyle: textTheme.bodyMedium!,
      descriptionWidth: 200,
    ),
    const MyoroCircularLoaderWidgetShowcaseThemeExtension(),
    const MyoroMenuWidgetShowcaseThemeExtension(),
    const MyoroModalWidgetShowcaseThemeExtension(),
    const MyoroDialogModalWidgetShowcaseThemeExtension(),
    const MyoroGroupRadioWidgetShowcaseThemeExtension(),
    const MyoroRadioWidgetShowcaseThemeExtension(),
    MyoroSliderWidgetShowcaseThemeExtension(
      widgetSliderValueTextStyle: textTheme.headlineSmall!,
      widgetSliderLabelSpacing: 5,
    ),
    const MyoroSnackBarWidgetShowcaseThemeExtension(),
    const MyoroTableWidgetShowcaseThemeExtension(),
    MyoroTooltipWidgetShowcaseThemeExtension(
      tooltipMargin: const EdgeInsets.only(top: 10),
      containerSize: const Size(200, 50),
      containerTextStyle: textTheme.titleMedium!,
    ),
  ];
}
