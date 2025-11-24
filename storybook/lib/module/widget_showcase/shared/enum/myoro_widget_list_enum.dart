import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storybook/src/l10n/gen/app_localizations.dart';
import 'package:storybook/storybook.dart';

// Import all widget showcase screens
import '../../presentation/screen/exports.dart';

/// Enum that stores all widgets of MFL.
enum MyoroWidgetListEnum {
  accordions('Accordions', {myoroAccordionsTitle}),
  appBars('App bars', {myoroAppBarTitle}),
  apps('Apps', {myoroAppTitle}),
  buttons('Buttons', {myoroButtonTitle, myoroIconTextButtonTitle}),
  cards('Cards', {myoroCardTitle}),
  carousels('Carousels', {myoroCarouselTitle}),
  checkboxes('Checkboxes', {myoroCheckboxTitle, myoroGroupCheckboxTitle}),
  dividers('Dividers', {myoroBasicDividerTitle, myoroResizeDividerTitle}),
  drawers('Drawers', {myoroDrawerTitle}),
  dropdowns('Dropdowns', {myoroDropdownsTitle, myoroSearchDropdownTitle, myoroSelectionDropdownsTitle}),
  feedbacks('Feedbacks', {myoroFeedbackTitle}),
  fields('Fields', {myoroFieldTitle}),
  filters('Filters', {myoroCheckboxFilterButtonTitle, myoroRadioFilterButtonTitle, myoroFilterPanelTitle}),
  forms('Forms', {myoroFormTitle}),
  graphs('Graphs', {myoroBarGraphTitle, myoroPieGraphTitle}),
  images('Images', {myoroImageTitle}),
  indexedStacks('Indexed Stacks', {myoroIndexedStackTitle}),
  inputs('Inputs', {
    myoroCurrencyInputTitle,
    myoroDatePickerInputTitle,
    myoroInputTitle,
    myoroSearchBarInputTitle,
    myoroTimePickerInputTitle,
  }),
  layoutBuilders('Layout Builders', {myoroLayoutBuilderTitle}),
  loaders('Loaders', {myoroCircularLoaderTitle}),
  menus('Menus', {myoroMenusTitle}),
  modals('Modals', {myoroModalTitle, myoroDialogModalTitle}),
  pickers('Pickers', {myoroFilePickerTitle, myoroImagePickerTitle}),
  radios('Radios', {myoroRadioTitle, myoroGroupRadioTitle}),
  screens('Screens', {myoroScreenTitle}),
  scrollables('Scrollables', {myoroScrollablesTitle}),
  sliders('Sliders', {myoroSlidersTitle}),
  snackBars('Snack Bars', {myoroSnackBarTitle, myoroSnackBarContainerTitle}),
  tags('Tags', {myoroTagTitle}),
  tabView('Tab views', {myoroTabViewTitle}),
  tables('Tables', {myoroTableTitle}),
  texts('Texts', {myoroTextTitle}),
  icons('Icons', {myoroIconTitle}),
  tooltips('Tooltips', {myoroTooltipTitle});

  const MyoroWidgetListEnum(this.categoryName, this.widgetNames);

  /// Name of the category of [Widget].
  final String categoryName;

  /// Names of each [Widget] in the category.
  final Set<String> widgetNames;

  /// Localized name of the category of [Widget].
  String getLocalizedCategoryName(AppLocalizations localization) {
    return switch (this) {
      MyoroWidgetListEnum.accordions => localization.storybookWidgetListEnumAccordionsCategoryName,
      MyoroWidgetListEnum.appBars => localization.storybookWidgetListEnumAppBarsCategoryName,
      MyoroWidgetListEnum.apps => localization.storybookWidgetListEnumAppsCategoryName,
      MyoroWidgetListEnum.buttons => localization.storybookWidgetListEnumButtonsCategoryName,
      MyoroWidgetListEnum.cards => localization.storybookWidgetListEnumCardsCategoryName,
      MyoroWidgetListEnum.carousels => localization.storybookWidgetListEnumCarouselsCategoryName,
      MyoroWidgetListEnum.checkboxes => localization.storybookWidgetListEnumCheckboxesCategoryName,
      MyoroWidgetListEnum.dividers => localization.storybookWidgetListEnumDividersCategoryName,
      MyoroWidgetListEnum.drawers => localization.storybookWidgetListEnumDrawersCategoryName,
      MyoroWidgetListEnum.dropdowns => localization.storybookWidgetListEnumDropdownsCategoryName,
      MyoroWidgetListEnum.feedbacks => localization.storybookWidgetListEnumFeedbacksCategoryName,
      MyoroWidgetListEnum.fields => localization.storybookWidgetListEnumFieldsCategoryName,
      MyoroWidgetListEnum.filters => localization.storybookWidgetListEnumFiltersCategoryName,
      MyoroWidgetListEnum.forms => localization.storybookWidgetListEnumFormsCategoryName,
      MyoroWidgetListEnum.graphs => localization.storybookWidgetListEnumGraphsCategoryName,
      MyoroWidgetListEnum.images => localization.storybookWidgetListEnumImagesCategoryName,
      MyoroWidgetListEnum.indexedStacks => localization.storybookWidgetListEnumIndexedStacksCategoryName,
      MyoroWidgetListEnum.inputs => localization.storybookWidgetListEnumInputsCategoryName,
      MyoroWidgetListEnum.layoutBuilders => localization.storybookWidgetListEnumLayoutBuildersCategoryName,
      MyoroWidgetListEnum.loaders => localization.storybookWidgetListEnumLoadersCategoryName,
      MyoroWidgetListEnum.menus => localization.storybookWidgetListEnumMenusCategoryName,
      MyoroWidgetListEnum.modals => localization.storybookWidgetListEnumModalsCategoryName,
      MyoroWidgetListEnum.pickers => localization.storybookWidgetListEnumPickersCategoryName,
      MyoroWidgetListEnum.radios => localization.storybookWidgetListEnumRadiosCategoryName,
      MyoroWidgetListEnum.screens => localization.storybookWidgetListEnumScreensCategoryName,
      MyoroWidgetListEnum.scrollables => localization.storybookWidgetListEnumScrollablesCategoryName,
      MyoroWidgetListEnum.sliders => localization.storybookWidgetListEnumSlidersCategoryName,
      MyoroWidgetListEnum.snackBars => localization.storybookWidgetListEnumSnackBarsCategoryName,
      MyoroWidgetListEnum.tags => localization.storybookWidgetListEnumTagsCategoryName,
      MyoroWidgetListEnum.tabView => localization.storybookWidgetListEnumTabViewCategoryName,
      MyoroWidgetListEnum.tables => localization.storybookWidgetListEnumTablesCategoryName,
      MyoroWidgetListEnum.texts => localization.storybookWidgetListEnumTextsCategoryName,
      MyoroWidgetListEnum.icons => localization.storybookWidgetListEnumIconsCategoryName,
      MyoroWidgetListEnum.tooltips => localization.storybookWidgetListEnumTooltipsCategoryName,
    };
  }

  factory MyoroWidgetListEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  // Accordions
  static const myoroAccordionsTitle = 'MyoroSingleAccordion & MyoroMultiAccordion';

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
  static const myoroDropdownsTitle = 'MyoroSingleDropdown & MyoroMultiDropdown';
  static const myoroSearchDropdownTitle = 'MyoroSearchDropdown';
  static const myoroSelectionDropdownsTitle = 'MyoroSelectionSingleDropdown & MyoroSelectionMultiDropdown';

  // Feedbacks
  static const myoroFeedbackTitle = 'MyoroFeedback';

  // Fields
  static const myoroFieldTitle = 'MyoroField';

  // Filters
  static const myoroCheckboxFilterButtonTitle = 'MyoroCheckboxFilterButton';
  static const myoroRadioFilterButtonTitle = 'MyoroRadioFilterButton';
  static const myoroFilterPanelTitle = 'MyoroFilterPanel';

  // Forms
  static const myoroFormTitle = 'MyoroForm';

  // Graphs
  static const myoroBarGraphTitle = 'MyoroBarGraph';
  static const myoroPieGraphTitle = 'MyoroPieGraph';

  // Images
  static const myoroImageTitle = 'MyoroImage';

  // Indexed stacks
  static const myoroIndexedStackTitle = 'MyoroIndexedStack';

  // Inputs
  static const myoroCurrencyInputTitle = 'MyoroCurrencyInput';
  static const myoroDatePickerInputTitle = 'MyoroDatePickerInput';
  static const myoroInputTitle = 'MyoroInput';
  static const myoroSearchBarInputTitle = 'MyoroSearchBarInput';
  static const myoroTimePickerInputTitle = 'MyoroTimePickerInput';

  // Loaders
  static const myoroCircularLoaderTitle = 'MyoroCircularLoader';

  // Layout builders
  static const myoroLayoutBuilderTitle = 'MyoroLayoutBuilder';

  // Menus
  static const myoroMenusTitle = 'MyoroSingleMenu & MyoroMultiMenu';

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

  // Scrollables
  static const myoroScrollablesTitle = 'MyoroScrollables';

  // Sliders
  static const myoroSlidersTitle = 'MyoroSlider & MyoroRangeSlider';

  // Snack bars
  static const myoroSnackBarTitle = 'MyoroSnackBar';
  static const myoroSnackBarContainerTitle = 'MyoroSnackBarContainer';

  // Tags
  static const myoroTagTitle = 'MyoroTag';

  // Tab views.
  static const myoroTabViewTitle = 'MyoroTabView';

  // Tables
  static const myoroTableTitle = 'MyoroTable';

  // Texts
  static const myoroTextTitle = 'MyoroText';

  // Icons
  static const myoroIconTitle = 'MyoroIcon';

  // Tooltips
  static const myoroTooltipTitle = 'MyoroTooltip';

  static Widget getWidgetShowcaseScreen(String widgetName) {
    return switch (widgetName) {
      // Accordions
      myoroAccordionsTitle => const MyoroAccordionsWidgetShowcaseScreen(),

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
      myoroSearchDropdownTitle => const MyoroSearchDropdownWidgetShowcaseScreen(),
      myoroSelectionDropdownsTitle => const MyoroSelectionDropdownsWidgetShowcaseScreen(),

      // Feedbacks
      myoroFeedbackTitle => const MyoroFeedbackWidgetShowcaseScreen(),

      // Fields
      myoroFieldTitle => const MyoroFieldWidgetShowcaseScreen(),

      // Filters
      myoroCheckboxFilterButtonTitle => const MyoroCheckboxFilterButtonWidgetShowcaseScreen(),
      myoroRadioFilterButtonTitle => const MyoroRadioFilterButtonWidgetShowcaseScreen(),
      myoroFilterPanelTitle => const MyoroFilterPanelWidgetShowcaseScreen(),

      // Forms
      myoroFormTitle => const MyoroFormWidgetShowcaseScreen(),

      // Graphs
      myoroBarGraphTitle => const MyoroBarGraphWidgetShowcaseScreen(),
      myoroPieGraphTitle => const MyoroPieGraphWidgetShowcaseScreen(),

      // Images
      myoroImageTitle => const MyoroImageWidgetShowcaseScreen(),

      // Indexed stacks
      myoroIndexedStackTitle => const MyoroIndexedStackWidgetShowcaseScreen(),

      // Inputs
      myoroCurrencyInputTitle => const MyoroCurrencyInputWidgetShowcaseScreen(),
      myoroDatePickerInputTitle => const MyoroDatePickerInputWidgetShowcaseScreen(),
      myoroInputTitle => const MyoroInputWidgetShowcaseScreen(),
      myoroSearchBarInputTitle => const MyoroSearchBarInputWidgetShowcaseScreen(),
      myoroTimePickerInputTitle => const MyoroTimePickerInputWidgetShowcaseScreen(),

      // Layout builders
      myoroLayoutBuilderTitle => const MyoroLayoutBuilderWidgetShowcaseScreen(),

      // Loaders
      myoroCircularLoaderTitle => const MyoroCircularLoaderWidgetShowcaseScreen(),

      // Menus
      myoroMenusTitle => const MyoroMenuWidgetShowcaseScreen(),

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

      // Scrollables
      myoroScrollablesTitle => const MyoroScrollablesWidgetShowcaseScreen(),

      // Sliders
      myoroSlidersTitle => const MyoroSlidersWidgetShowcaseScreen(),

      // Snack bars
      myoroSnackBarTitle => const MyoroSnackBarWidgetShowcaseScreen(),
      myoroSnackBarContainerTitle => const MyoroSnackBarContainerWidgetShowcaseScreen(),

      // Tags
      myoroTagTitle => const MyoroTagWidgetShowcaseScreen(),

      // Tab views.
      myoroTabViewTitle => const MyoroTabViewWidgetShowcaseScreen(),

      // Tables
      myoroTableTitle => const MyoroTableWidgetShowcaseScreen(),

      // Texts
      myoroTextTitle => const MyoroTextWidgetShowcaseScreen(),

      // Icons
      myoroIconTitle => const MyoroIconWidgetShowcaseScreen(),

      // Tooltips
      myoroTooltipTitle => const MyoroTooltipWidgetShowcaseScreen(),
      _ => throw AssertionError('[MyoroWidgetListEnum.getWidgetShowcaseScreen]: [Widget] does not exist.'),
    };
  }
}
