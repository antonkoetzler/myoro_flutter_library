import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Enum for all for all of the widgets we showcase in the storyboard.
enum WidgetListingEnum {
  appBars('App bars', [myoroAppBarTitle]),
  buttons('Buttons', [myoroHoverButtonTitle, myoroIconTextHoverButtonTitle]),
  cards('Cards', [myoroCardTitle]),
  carousels('Carousels', [myoroCarouselTitle]),
  checkboxes('Checkboxes', [myoroCheckboxTitle, myoroGroupCheckboxTitle]),
  dividers('Dividers', [myoroBasicDividerTitle, myoroResizeDividerTitle]),
  drawers('Drawers', [myoroDrawerTitle]),
  dropdowns('Dropdowns', [myoroSingularDropdownTitle, myoroMultiDropdownTitle]),
  forms('Forms', [myoroFormTitle]),
  graphs('Graphs', [myoroBarGraphTitle, myoroPieGraphTitle]),
  inputs('Inputs', [
    myoroDatePickerInputTitle,
    myoroInputTitle,
    myoroSearchInputTitle,
  ]),
  layoutBuilders('Layout builders', [myoroLayoutBuilderTitle]),
  loaders('Loaders', [myoroCircularLoaderTitle]),
  materialApps('Material apps', [myoroMaterialAppTitle]),
  menus('Menus', [myoroMenuTitle]),
  modals('Modals', [myoroModalTitle, myoroDialogModalTitle]),
  radios('Radios', [myoroRadioTitle, myoroGroupRadioTitle]),
  resolvers('Resolvers', [myoroResolverTitle]),
  screens('Screens', [myoroScreenTitle]),
  sliders('Sliders', [myoroSliderTitle]),
  snackBars('Snack bars', [myoroSnackBarTitle]),
  tables('Tables', [myoroTableTitle, myoroTableV2Title]),
  tooltips('Tooltips', [myoroTooltipTitle]);

  final String widgetCategory;
  final List<String> widgetNames;

  const WidgetListingEnum(this.widgetCategory, this.widgetNames);

  // App bars
  static const myoroAppBarTitle = 'MyoroAppBar';

  // Buttons
  static const myoroHoverButtonTitle = 'MyoroHoverButton';
  static const myoroIconTextHoverButtonTitle = 'MyoroIconTextHoverButton';

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
  static const myoroSingularDropdownTitle = 'MyoroSingularDropdown';
  static const myoroMultiDropdownTitle = 'MyoroMultiDropdown';

  // Forms
  static const myoroFormTitle = 'MyoroForm';

  // Graphs
  static const myoroBarGraphTitle = 'MyoroBarGraph';
  static const myoroPieGraphTitle = 'MyoroPieGraph';

  // Inputs
  static const myoroDatePickerInputTitle = 'MyoroDatePickerInput';
  static const myoroInputTitle = 'MyoroInput';
  static const myoroSearchInputTitle = 'MyoroSearchInput';

  // Layout builders
  static const myoroLayoutBuilderTitle = 'MyoroLayoutBuilder';

  // Loaders
  static const myoroCircularLoaderTitle = 'MyoroCircularLoader';

  // Material apps
  static const myoroMaterialAppTitle = 'MyoroMaterialApp';

  // Menus
  static const myoroMenuTitle = 'MyoroMenu';

  // Modals
  static const myoroModalTitle = 'MyoroModal';
  static const myoroDialogModalTitle = 'MyoroDialogModal';

  // Radios
  static const myoroRadioTitle = 'MyoroRadio';
  static const myoroGroupRadioTitle = 'MyoroGroupRadio';

  // Resolvers
  static const myoroResolverTitle = 'MyoroResolver';

  // Screens
  static const myoroScreenTitle = 'MyoroScreen';

  // Scrollables
  static const myoroScrollableTitle = 'MyoroScrollable';

  // Sliders
  static const myoroSliderTitle = 'MyoroSlider';

  // Snack bars
  static const myoroSnackBarTitle = 'MyoroSnackBar';

  // Tables
  static const myoroTableTitle = 'MyoroTable';
  static const myoroTableV2Title = 'MyoroTableV2';

  // Tooltips
  static const myoroTooltipTitle = 'MyoroTooltip';

  /// Widget that will be displayed in [_WidgetViewer].
  static Widget widgetViewerWidget(String widgetName) {
    return switch (widgetName) {
      // App bars
      myoroAppBarTitle => const MyoroAppBarWidgetShowcase(),

      // Buttons
      myoroHoverButtonTitle => const MyoroHoverButtonWidgetShowcase(),
      myoroIconTextHoverButtonTitle =>
        const MyoroIconTextHoverButtonWidgetShowcase(),

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
      myoroSingularDropdownTitle => const MyoroSingularDropdownWidgetShowcase(),
      myoroMultiDropdownTitle => const MyoroMultiDropdownWidgetShowcase(),

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

      // Material apps
      myoroMaterialAppTitle => const MyoroMaterialAppWidgetShowcase(),

      // Menus
      myoroMenuTitle => const MyoroMenuWidgetShowcase(),

      // Modals
      myoroModalTitle => const MyoroModalWidgetShowcase(),
      myoroDialogModalTitle => const MyoroDialogModalWidgetShowcase(),

      // Radios
      myoroRadioTitle => const MyoroRadioWidgetShowcase(),
      myoroGroupRadioTitle => const MyoroGroupRadioWidgetShowcase(),

      // Resolvers
      myoroResolverTitle => const MyoroResolverWidgetShowcase(),

      // Screens
      myoroScreenTitle => const MyoroScreenWidgetShowcase(),

      // Sliders
      myoroSliderTitle => const MyoroSliderWidgetShowcase(),

      // Snack bars
      myoroSnackBarTitle => const MyoroSnackBarWidgetShowcase(),

      // Tables
      myoroTableTitle => const MyoroTableWidgetShowcase(),
      myoroTableV2Title => const MyoroTableV2WidgetShowcase(),

      // Tooltips
      myoroTooltipTitle => const MyoroTooltipWidgetShowcase(),

      // Should never get here
      _ =>
        throw Exception(
          '[WidgetListingEnum.widgetViewWidget]: Unknown [widgetName] provided.',
        ),
    };
  }

  bool get isAppBars => this == appBars;
  bool get isButtons => this == buttons;
  bool get isCards => this == cards;
  bool get isCarousels => this == carousels;
  bool get isCheckboxes => this == checkboxes;
  bool get isDividers => this == dividers;
  bool get isDrawers => this == drawers;
  bool get isDropdowns => this == dropdowns;
  bool get isForms => this == forms;
  bool get isGraphs => this == graphs;
  bool get isInputs => this == inputs;
  bool get isLayoutBuilders => this == layoutBuilders;
  bool get isLoaders => this == loaders;
  bool get isMaterialApps => this == materialApps;
  bool get isMenus => this == menus;
  bool get isModals => this == modals;
  bool get isRadios => this == radios;
  bool get isResolvers => this == resolvers;
  bool get isScreens => this == screens;
  bool get isSliders => this == sliders;
  bool get isSnackBars => this == snackBars;
  bool get isTables => this == tables;
  bool get isTooltips => this == tooltips;
}
