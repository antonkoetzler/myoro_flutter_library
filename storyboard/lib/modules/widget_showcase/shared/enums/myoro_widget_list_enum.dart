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
  dropdowns('Dropdowns', {myoroDropdownsTitle});

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
}
