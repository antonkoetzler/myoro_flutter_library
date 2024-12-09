import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

List<ThemeExtension> createStoryboardThemeExtensions(TextTheme textTheme) {
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
      wrapperWrapperAlignment: Alignment.center,
    ),
    MyoroAppBarWidgetShowcaseThemeExtension(
      mockAppLogoIcon: Icons.people,
      mockAppTitleTextStyle: textTheme.titleMedium!,
      logoTitleSpacing: 5,
      mockMenuButtonIcon: Icons.menu,
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
    const MyoroCircularLoaderWidgetShowcaseThemeExtension(
      widgetOptionsSpacing: 20,
    ),
    const MyoroMenuWidgetShowcaseThemeExtension(
      widgetOptionsSpacing: 20,
    ),
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
