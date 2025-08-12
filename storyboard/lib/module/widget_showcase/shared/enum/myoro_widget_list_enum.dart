import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Enum that stores all widgets of MFL.
enum MyoroWidgetListEnum {
  accordions('Accordions', {myoroAccordionTitle}),
  appBars('App bars', {myoroAppBarTitle}),
  apps('Apps', {myoroAppTitle}),
  buttons('Buttons', {myoroButtonTitle, myoroIconTextButtonTitle}),
  cards('Cards', {myoroCardTitle}),
  carousels('Carousels', {myoroCarouselTitle}),
  checkboxes('Checkboxes', {myoroCheckboxTitle, myoroGroupCheckboxTitle}),
  dividers('Dividers', {myoroBasicDividerTitle, myoroResizeDividerTitle}),
  drawers('Drawers', {myoroDrawerTitle}),
  dropdowns('Dropdowns', {myoroDropdownsTitle}),
  feedbacks('Feedbacks', {myoroFeedbackTitle}),
  forms('Forms', {myoroFormTitle}),
  graphs('Graphs', {myoroBarGraphTitle, myoroPieGraphTitle}),
  inputs('Inputs', {myoroDatePickerInputTitle, myoroInputTitle, myoroSearchInputTitle}),
  layoutBuilders('Layout Builders', {myoroLayoutBuilderTitle}),
  loaders('Loaders', {myoroCircularLoaderTitle}),
  menus('Menus', {myoroMenuTitle}),
  modals('Modals', {myoroModalTitle, myoroDialogModalTitle}),
  pickers('Pickers', {myoroFilePickerTitle, myoroImagePickerTitle}),
  radios('Radios', {myoroRadioTitle, myoroGroupRadioTitle}),
  screens('Screens', {myoroScreenTitle}),
  sliders('Sliders', {myoroRangeSliderTitle, myoroSliderTitle}),
  snackBars('Snack Bars', {myoroSnackBarTitle, myoroSnackBarContainerTitle}),
  tabView('Tab views', {myoroTabViewTitle}),
  tables('Tables', {myoroTableTitle}),
  tooltips('Tooltips', {myoroTooltipTitle});

  const MyoroWidgetListEnum(this.categoryName, this.widgetNames);

  /// Name of the category of [Widget].
  final String categoryName;

  /// Names of each [Widget] in the category.
  final Set<String> widgetNames;

  // coverage:ignore-start
  factory MyoroWidgetListEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  // Accordions
  static const myoroAccordionTitle = 'MyoroAccordion';

  // App bars
  static const myoroAppBarTitle = 'MyoroAppBar';

  // Apps
  static const myoroAppTitle = 'MyoroApp';

  // Buttons
  static const myoroButtonTitle = 'MyoroButton';
  static const myoroIconTextButtonTitle = 'MyoroIconTextButton';

  // Cards
  static const myoroCardTitle = 'MyoroCard';

  // Carousels
  static const myoroCarouselTitle = 'MyoroCarousel';

  // Checkboxes
  static const myoroCheckboxTitle = 'MyoroCheckbox';
  static const myoroGroupCheckboxTitle = 'MyoroGroupCheckbox';

  // Dividers
  static const myoroBasicDividerTitle = 'MyoroBasicDivider';
  static const myoroResizeDividerTitle = 'MyoroResizeDivider';

  // Drawers
  static const myoroDrawerTitle = 'MyoroDrawer';

  // Dropdowns
  static const myoroDropdownsTitle = 'MyoroSingularDropdown & MyoroMultiDropdown';

  // Feedbacks
  static const myoroFeedbackTitle = 'MyoroFeedback';

  // Forms
  static const myoroFormTitle = 'MyoroForm';

  // Graphs
  static const myoroBarGraphTitle = 'MyoroBarGraph';
  static const myoroPieGraphTitle = 'MyoroPieGraph';

  // Inputs
  static const myoroDatePickerInputTitle = 'MyoroDatePickerInput';
  static const myoroInputTitle = 'MyoroInput';
  static const myoroSearchInputTitle = 'MyoroSearchInput';

  // Loaders
  static const myoroCircularLoaderTitle = 'MyoroCircularLoader';

  // Layout builders
  static const myoroLayoutBuilderTitle = 'MyoroLayoutBuilder';

  // Menus
  static const myoroMenuTitle = 'MyoroMenu';

  // Modals
  static const myoroDialogModalTitle = 'MyoroDialogModal';
  static const myoroModalTitle = 'MyoroModal';

  // Pickers
  static const myoroFilePickerTitle = 'MyoroFilePicker';
  static const myoroImagePickerTitle = 'MyoroImagePicker';

  // Radios
  static const myoroGroupRadioTitle = 'MyoroGroupRadio';
  static const myoroRadioTitle = 'MyoroRadio';

  // Screens
  static const myoroScreenTitle = 'MyoroScreen';

  // Sliders
  static const myoroRangeSliderTitle = 'MyoroRangeSlider';
  static const myoroSliderTitle = 'MyoroSlider';

  // Snack bars
  static const myoroSnackBarTitle = 'MyoroSnackBar';
  static const myoroSnackBarContainerTitle = 'MyoroSnackBarContainer';

  // Tab views.
  static const myoroTabViewTitle = 'MyoroTabView';

  // Tables
  static const myoroTableTitle = 'MyoroTable';

  // Tooltips
  static const myoroTooltipTitle = 'MyoroTooltip';

  static Widget getWidgetShowcaseScreen(String widgetName) {
    return switch (widgetName) {
      // Accordions
      myoroAccordionTitle => const MyoroAccordionWidgetShowcaseScreen(),

      // App bars
      myoroAppBarTitle => const MyoroAppBarWidgetShowcaseScreen(),

      // Apps
      myoroAppTitle => const MyoroAppWidgetShowcaseScreen(),

      // Buttons
      myoroButtonTitle => const MyoroButtonWidgetShowcaseScreen(),
      myoroIconTextButtonTitle => const MyoroIconTextButtonWidgetShowcaseScreen(),

      // Cards
      myoroCardTitle => const MyoroCardWidgetShowcaseScreen(),

      // Carousels
      myoroCarouselTitle => const MyoroCarouselWidgetShowcaseScreen(),

      // Checkboxes
      myoroCheckboxTitle => const MyoroCheckboxWidgetShowcaseScreen(),
      myoroGroupCheckboxTitle => const MyoroGroupCheckboxWidgetShowcaseScreen(),

      // Dividers
      myoroBasicDividerTitle => const MyoroBasicDividerWidgetShowcaseScreen(),
      myoroResizeDividerTitle => const MyoroResizeDividerWidgetShowcaseScreen(),

      // Drawers
      myoroDrawerTitle => const MyoroDrawerWidgetShowcaseScreen(),

      // Dropdowns
      myoroDropdownsTitle => const MyoroDropdownWidgetShowcaseScreen(),

      // Feedbacks
      myoroFeedbackTitle => const MyoroFeedbackWidgetShowcaseScreen(),

      // Forms
      myoroFormTitle => const MyoroFormWidgetShowcaseScreen(),

      // Graphs
      myoroBarGraphTitle => const MyoroBarGraphWidgetShowcaseScreen(),
      myoroPieGraphTitle => const MyoroPieGraphWidgetShowcaseScreen(),

      // Inputs
      myoroDatePickerInputTitle => const MyoroDatePickerInputWidgetShowcaseScreen(),
      myoroInputTitle => const MyoroInputWidgetShowcaseScreen(),
      myoroSearchInputTitle => const MyoroSearchInputWidgetShowcaseScreen(),

      // Layout builders
      myoroLayoutBuilderTitle => const MyoroLayoutBuilderWidgetShowcaseScreen(),

      // Loaders
      myoroCircularLoaderTitle => const MyoroCircularLoaderWidgetShowcaseScreen(),

      // Menus
      myoroMenuTitle => const MyoroMenuWidgetShowcaseScreen(),

      // Modals
      myoroDialogModalTitle => const MyoroDialogModalWidgetShowcaseScreen(),
      myoroModalTitle => const MyoroModalWidgetShowcaseScreen(),

      // Pickers
      myoroFilePickerTitle => const MyoroFilePickerWidgetShowcaseScreen(),
      myoroImagePickerTitle => const MyoroImagePickerWidgetShowcaseScreen(),

      // Radios
      myoroGroupRadioTitle => const MyoroGroupRadioWidgetShowcaseScreen(),
      myoroRadioTitle => const MyoroRadioWidgetShowcaseScreen(),

      // Screens
      myoroScreenTitle => const MyoroScreenWidgetShowcaseScreen(),

      // Sliders
      myoroRangeSliderTitle => const MyoroRangeSliderWidgetShowcaseScreen(),
      myoroSliderTitle => const MyoroSliderWidgetShowcaseScreen(),

      // Snack bars
      myoroSnackBarTitle => const MyoroSnackBarWidgetShowcaseScreen(),
      myoroSnackBarContainerTitle => const MyoroSnackBarContainerWidgetShowcaseScreen(),

      // Tab views.
      myoroTabViewTitle => const MyoroTabViewWidgetShowcaseScreen(),

      // Tables
      myoroTableTitle => const MyoroTableWidgetShowcaseScreen(),

      // Tooltips
      myoroTooltipTitle => const MyoroTooltipWidgetShowcaseScreen(),

      _ => throw AssertionError('[MyoroWidgetListEnum.getWidgetShowcaseScreen]: [Widget] does not exist.'),
    };
  }
}
