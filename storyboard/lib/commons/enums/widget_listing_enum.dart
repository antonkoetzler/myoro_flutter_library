import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Enum for all for all of the widgets we showcase in the storyboard.
enum WidgetListingEnum {
  appBars('App bars', [
    myoroAppBarTitle,
  ]),
  bodies('Bodies', [
    myoroBodyTitle,
  ]),
  buttons('Buttons', [
    myoroHoverButtonTitle,
    myoroIconTextHoverButtonTitle,
  ]),
  checkboxes('Checkboxes', [
    myoroCheckboxTitle,
    myoroGroupCheckboxTitle,
  ]),
  dividers('Dividers', [
    myoroBasicDividerTitle,
    myoroResizeDividerTitle,
  ]),
  drawers('Drawers', [
    myoroDrawerTitle,
  ]),
  dropdowns('Dropdowns', [
    myoroDropdownTitle,
  ]),
  forms('Forms', [
    myoroFormTitle,
  ]),
  inputs('Inputs', [
    myoroInputTitle,
    myoroSearchInputTitle,
  ]),
  loaders('Loaders', [
    myoroCircularLoaderTitle,
  ]),
  materialApps('Material apps', [
    myoroMaterialAppTitle,
  ]),
  menus('Menus', [
    myoroMenuTitle,
  ]),
  modals('Modals', [
    myoroModalTitle,
    myoroDialogModalTitle,
  ]),
  radios('Radios', [
    myoroRadioTitle,
    myoroGroupRadioTitle,
  ]),
  resolvers('Resolvers', [
    myoroResolverTitle,
  ]),
  screens('Screens', [
    myoroScreenTitle,
  ]),
  scrollables('Scrollables', [
    myoroScrollableTitle,
  ]),
  sliders('Sliders', [
    myoroSliderTitle,
  ]),
  snackBars('Snack bars', [
    myoroSnackBarTitle,
  ]);

  final String widgetCategory;
  final List<String> widgetNames;

  const WidgetListingEnum(this.widgetCategory, this.widgetNames);

  // App bars.
  static const myoroAppBarTitle = 'MyoroAppBar';

  // Bodies.
  static const myoroBodyTitle = 'MyoroBody';

  // Buttons.
  static const myoroHoverButtonTitle = 'MyoroHoverButton';
  static const myoroIconTextHoverButtonTitle = 'MyoroIconTextHoverButton';

  // Checkboxes.
  static const myoroCheckboxTitle = 'MyoroCheckbox';
  static const myoroGroupCheckboxTitle = 'MyoroGroupCheckbox';

  // Dividers.
  static const myoroBasicDividerTitle = 'MyoroBasicDivider';
  static const myoroResizeDividerTitle = 'MyoroResizeDivider';

  // Drawers.
  static const myoroDrawerTitle = 'MyoroDrawer';

  // Dropdowns.
  static const myoroDropdownTitle = 'MyoroDropdown';

  // Forms.
  static const myoroFormTitle = 'MyoroForm';

  // Inputs.
  static const myoroInputTitle = 'MyoroInput';
  static const myoroSearchInputTitle = 'MyoroSearchInput';

  // Loaders.
  static const myoroCircularLoaderTitle = 'MyoroCircularLoader';

  // Material apps.
  static const myoroMaterialAppTitle = 'MyoroMaterialApp';

  // Menus.
  static const myoroMenuTitle = 'MyoroMenu';

  // Modals.
  static const myoroModalTitle = 'MyoroModal';
  static const myoroDialogModalTitle = 'MyoroDialogModal';

  // Radios.
  static const myoroRadioTitle = 'MyoroRadio';
  static const myoroGroupRadioTitle = 'MyoroGroupRadio';

  // Resolvers.
  static const myoroResolverTitle = 'MyoroResolver';

  // Screens.
  static const myoroScreenTitle = 'MyoroScreen';

  // Scrollables.
  static const myoroScrollableTitle = 'MyotoScrollable';

  // Sliders.
  static const myoroSliderTitle = 'MyoroSlider';

  // Snack bars.
  static const myoroSnackBarTitle = 'MyoroSnackBar';

  /// Widget that will be displayed in [_WidgetViewer].
  static Widget widgetViewerWidget(String widgetName) {
    return switch (widgetName) {
      // App bars.
      myoroAppBarTitle => const MyoroAppBarWidgetShowcase(),

      // Bodies.
      myoroBodyTitle => throw UnimplementedError(),

      // Buttons.
      myoroHoverButtonTitle => throw UnimplementedError(),
      myoroIconTextHoverButtonTitle => throw UnimplementedError(),

      // Checkboxes.
      myoroCheckboxTitle => const MyoroCheckboxWidgetShowcase(),
      myoroGroupCheckboxTitle => const MyoroGroupCheckboxWidgetShowcase(),

      // Dividers.
      myoroBasicDividerTitle => throw UnimplementedError(),
      myoroResizeDividerTitle => throw UnimplementedError(),

      // Drawers.
      myoroDrawerTitle => const MyoroDrawerWidgetShowcase(),

      // Dropdowns.
      myoroDropdownTitle => const MyoroDropdownWidgetShowcase(),

      // Forms.
      myoroFormTitle => const MyoroFormWidgetShowcase(),

      // Inputs.
      myoroInputTitle => const MyoroInputWidgetShowcase(),
      myoroSearchInputTitle => const MyoroSearchInputWidgetShowcase(),

      // Loaders.
      myoroCircularLoaderTitle => const MyoroCircularLoaderWidgetShowcase(),

      // Material apps.
      myoroMaterialAppTitle => throw UnimplementedError(),

      // Menus.
      myoroMenuTitle => const MyoroMenuWidgetShowcase(),

      // Modals.
      myoroModalTitle => const MyoroModalWidgetShowcase(),
      myoroDialogModalTitle => const MyoroDialogModalWidgetShowcase(),

      // Radios.
      myoroRadioTitle => const MyoroRadioWidgetShowcase(),
      myoroGroupRadioTitle => const MyoroGroupRadioWidgetShowcase(),

      // Resolvers.
      myoroResolverTitle => throw UnimplementedError(),

      // Screens.
      myoroScreenTitle => throw UnimplementedError(),

      // Scrollables.
      myoroScrollableTitle => throw UnimplementedError(),

      // Sliders.
      myoroSliderTitle => const MyoroSliderWidgetShowcase(),

      // Snack bars.
      myoroSnackBarTitle => const MyoroSnackBarWidgetShowcase(),

      // Should never get here.
      _ => throw Exception('[WidgetListingEnum.widgetViewWidget]: Unknown [widgetName] provided.'),
    };
  }

  bool get isAppBars => this == appBars;
  bool get isBodies => this == bodies;
  bool get isCheckboxes => this == checkboxes;
  bool get isButtons => this == buttons;
  bool get isDividers => this == dividers;
  bool get isDrawers => this == drawers;
  bool get isDropdowns => this == dropdowns;
  bool get isForms => this == forms;
  bool get isInputs => this == inputs;
  bool get isMaterialApps => this == materialApps;
  bool get isMenus => this == menus;
  bool get isModals => this == modals;
  bool get isRadios => this == radios;
  bool get isResolvers => this == resolvers;
  bool get isScreens => this == screens;
  bool get isScrollables => this == scrollables;
  bool get isSliders => this == sliders;
  bool get isSnackBars => this == snackBars;
}
