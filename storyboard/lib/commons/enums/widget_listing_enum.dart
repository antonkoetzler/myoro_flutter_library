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
  ]),
  dividers('Dividers', [
    myoroBasicDividerTitle,
    myoroResizeDividerTitle,
  ]),
  dropdowns('Dropdowns', [
    myoroDropdownTitle,
  ]),
  forms('Forms', [
    myoroFormTitle,
  ]),
  inputs('Inputs', [
    myoroInputTitle,
  ]),
  materialApps('Material apps', [
    myoroMaterialAppTitle,
  ]),
  menus('Menus', [
    myoroMenuTitle,
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
  ]);

  final String widgetCategory;
  final List<String> widgetNames;

  const WidgetListingEnum(this.widgetCategory, this.widgetNames);

  static const myoroAppBarTitle = 'MyoroAppBar';
  static const myoroDropdownTitle = 'MyoroDropdown';
  static const myoroBodyTitle = 'MyoroBody';
  static const myoroCheckboxTitle = 'MyoroCheckbox';
  static const myoroHoverButtonTitle = 'MyoroHoverButton';
  static const myoroIconTextHoverButtonTitle = 'MyoroIconTextHoverButton';
  static const myoroBasicDividerTitle = 'MyoroBasicDivider';
  static const myoroResizeDividerTitle = 'MyoroResizeDivider';
  static const myoroFormTitle = 'MyoroForm';
  static const myoroInputTitle = 'MyoroInput';
  static const myoroResolverTitle = 'MyoroResolver';
  static const myoroMaterialAppTitle = 'MyoroMaterialApp';
  static const myoroMenuTitle = 'MyoroMenu';
  static const myoroScreenTitle = 'MyoroScreen';
  static const myoroScrollableTitle = 'MyotoScrollable';
  static const myoroSliderTitle = 'MyoroSlider';

  /// Widget that will be displayed in [_WidgetViewer].
  static Widget widgetViewerWidget(String widgetName) {
    return switch (widgetName) {
      myoroAppBarTitle => const MyoroAppBarWidgetShowcase(),
      myoroDropdownTitle => const MyoroDropdownWidgetShowcase(),
      myoroBodyTitle => throw UnimplementedError(),
      myoroCheckboxTitle => const MyoroCheckboxWidgetShowcase(),
      myoroHoverButtonTitle => throw UnimplementedError(),
      myoroIconTextHoverButtonTitle => throw UnimplementedError(),
      myoroBasicDividerTitle => throw UnimplementedError(),
      myoroResizeDividerTitle => throw UnimplementedError(),
      myoroFormTitle => throw UnimplementedError(),
      myoroInputTitle => const MyoroInputWidgetShowcase(),
      myoroMaterialAppTitle => throw UnimplementedError(),
      myoroMenuTitle => const MyoroMenuWidgetShowcase(),
      myoroResolverTitle => throw UnimplementedError(),
      myoroScreenTitle => throw UnimplementedError(),
      myoroScrollableTitle => throw UnimplementedError(),
      myoroSliderTitle => const MyoroSliderWidgetShowcase(),
      _ => throw Exception('[WidgetListingEnum.widgetViewWidget]: Unknown [widgetName] provided.'),
    };
  }

  bool get isAppBars => this == appBars;
  bool get isDropdowns => this == dropdowns;
  bool get isBodies => this == bodies;
  bool get isCheckboxes => this == checkboxes;
  bool get isButtons => this == buttons;
  bool get isDividers => this == dividers;
  bool get isForms => this == forms;
  bool get isInputs => this == inputs;
  bool get isMaterialApps => this == materialApps;
  bool get isMyoroMenu => this == menus;
  bool get isResolvers => this == resolvers;
  bool get isScreens => this == screens;
  bool get isScrollables => this == scrollables;
  bool get isSliders => this == sliders;
}
