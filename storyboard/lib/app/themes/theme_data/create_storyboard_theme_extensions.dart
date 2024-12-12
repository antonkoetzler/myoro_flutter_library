import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

List<ThemeExtension> createStoryboardThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    // [WidgetShowcase] & [WidgetShowcase]s.
    WidgetShowcaseThemeExtension(
      widgetWrapperBackgroundColor: MyoroColorTheme.attention.withOpacity(0.1),
      widgetWrapperPadding: const EdgeInsets.all(20),
      widgetWrapperContentPadding: const EdgeInsets.all(20),
      widgetWrapperBorderRadius: MyoroDecorationHelper.borderRadius,
      widgetWrapperBorder: Border.all(
        width: 2,
        color: MyoroColorTheme.attention,
      ),
      wrapperWrapperAlignment: Alignment.center,
      widgetOptionsPadding: const EdgeInsets.all(10),
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
    const MyoroCardWidgetShowcaseThemeExtension(),
    const MyoroCarouselWidgetShowcaseThemeExtension(),
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
    const MyoroPieGraphWidgetShowcaseThemeExtension(),
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

    // Main app widgets (app bar & body).
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
