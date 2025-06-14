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
  forms('Forms', {myoroFormTitle}),
  graphs('Graphs', {myoroBarGraphTitle, myoroPieGraphTitle}),
  inputs('Inputs', {myoroDatePickerInputTitle, myoroInputTitle, myoroSearchInputTitle}),
  layoutBuilders('Layout Builders', {myoroLayoutBuilderTitle}),
  loaders('Loaders', {myoroCircularLoaderTitle}),
  menus('Menus', {myoroMenuTitle}),
  modals('Modals', {myoroModalTitle, myoroDialogModalTitle}),
  radios('Radios', {myoroRadioTitle, myoroGroupRadioTitle}),
  screens('Screens', {myoroScreenTitle}),
  sliders('Sliders', {myoroSliderTitle}),
  snackBars('Snack Bars', {myoroSnackBarTitle, myoroSnackBarContainerTitle}),
  tables('Tables', {myoroTableTitle}),
  tooltips('Tooltips', {myoroTooltipTitle});

  const MyoroWidgetListEnum(this.categoryName, this.widgetNames);

  /// Name of the category of [Widget].
  final String categoryName;

  /// Names of each [Widget] in the category.
  final Set<String> widgetNames;

  factory MyoroWidgetListEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

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
  static const myoroDropdownsTitle = 'MyoroSingularDropdown/MyoroMultiDropdown';

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

  // Radios
  static const myoroGroupRadioTitle = 'MyoroGroupRadio';
  static const myoroRadioTitle = 'MyoroRadio';

  // Screens
  static const myoroScreenTitle = 'MyoroScreen';

  // Sliders
  static const myoroSliderTitle = 'MyoroSlider';

  // Snack bars
  static const myoroSnackBarTitle = 'MyoroSnackBar';
  static const myoroSnackBarContainerTitle = 'MyoroSnackBarContainer';

  // Tables
  static const myoroTableTitle = 'MyoroTable';

  // Tooltips
  static const myoroTooltipTitle = 'MyoroTooltip';

  static Widget getWidgetShowcase(String widgetName) {
    return switch (widgetName) {
      // Accordions
      myoroAccordionTitle => const MyoroAccordionWidgetShowcase(),

      // App bars
      myoroAppBarTitle => const MyoroAppBarWidgetShowcase(),

      // Apps
      myoroAppTitle => const MyoroAppWidgetShowcase(),

      // Buttons
      myoroButtonTitle => const MyoroButtonWidgetShowcase(),
      myoroIconTextButtonTitle => const MyoroIconTextButtonWidgetShowcase(),

      // Cards
      myoroCardTitle => const MyoroCardWidgetShowcase(),

      // Carousels
      myoroCarouselTitle => const MyoroCarouselWidgetShowcase(),

      // Checkboxes
      myoroCheckboxTitle => const MyoroCheckboxWidgetShowcase(),
      myoroGroupCheckboxTitle => const MyoroGroupCheckboxWidgetShowcase(),

      // Dividers
      myoroBasicDividerTitle => const MyoroBasicDividerWidgetShowcase(),
      myoroResizeDividerTitle => const MyoroResizeDividerWidgetShowcase(),

      // Drawers
      myoroDrawerTitle => const MyoroDrawerWidgetShowcase(),

      // Dropdowns
      myoroDropdownsTitle => const MyoroDropdownWidgetShowcase(),

      // Forms
      myoroFormTitle => const MyoroFormWidgetShowcase(),

      // Graphs
      myoroBarGraphTitle => const MyoroBarGraphWidgetShowcase(),
      myoroPieGraphTitle => const MyoroPieGraphWidgetShowcase(),

      // Inputs
      myoroDatePickerInputTitle => const MyoroDatePickerInputWidgetShowcase(),
      myoroInputTitle => const MyoroInputWidgetShowcase(),
      myoroSearchInputTitle => const MyoroSearchInputWidgetShowcase(),

      // Layout builders
      myoroLayoutBuilderTitle => const MyoroLayoutBuilderWidgetShowcase(),

      // Loaders
      myoroCircularLoaderTitle => const MyoroCircularLoaderWidgetShowcase(),

      // Menus
      myoroMenuTitle => const MyoroMenuWidgetShowcase(),

      // Modals
      myoroDialogModalTitle => const MyoroDialogModalWidgetShowcase(),
      myoroModalTitle => const MyoroModalWidgetShowcase(),

      // Radios
      myoroGroupRadioTitle => const MyoroGroupRadioWidgetShowcase(),
      myoroRadioTitle => const MyoroRadioWidgetShowcase(),

      // Screens
      myoroScreenTitle => const MyoroScreenWidgetShowcase(),

      // Sliders
      myoroSliderTitle => const MyoroSliderWidgetShowcase(),

      // Snack bars
      myoroSnackBarTitle => const MyoroSnackBarWidgetShowcase(),
      myoroSnackBarContainerTitle => const MyoroSnackBarContainerWidgetShowcase(),

      // Tables
      myoroTableTitle => const MyoroTableWidgetShowcase(),

      // Tooltips
      myoroTooltipTitle => const MyoroTooltipWidgetShowcase(),

      _ => throw AssertionError('[MyoroWidgetListEnum.getWidgetShowcase]: [Widget] does not exist.'),
    };
  }

  bool get isAccordions => this == accordions;
  bool get isAppBars => this == appBars;
  bool get isApps => this == apps;
  bool get isButtons => this == buttons;
  bool get isCards => this == cards;
  bool get isCarousels => this == carousels;
  bool get isCheckboxes => this == checkboxes;
  bool get isDividers => this == dividers;
  bool get isDrawers => this == drawers;
  bool get isForms => this == forms;
  bool get isGraphs => this == graphs;
  bool get isInputs => this == inputs;
  bool get isLayoutBuilders => this == layoutBuilders;
  bool get isLoaders => this == loaders;
  bool get isMenus => this == menus;
  bool get isModals => this == modals;
  bool get isRadios => this == radios;
  bool get isScreens => this == screens;
  bool get isSliders => this == sliders;
  bool get isSnackBars => this == snackBars;
  bool get isTables => this == tables;
  bool get isTooltips => this == tooltips;
}
