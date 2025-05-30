import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Enum that stores all widgets of MFL.
enum MyoroWidgetListEnum {
  accordions('Accordions', {myoroAccordionTitle}),
  appBars('App bars', {myoroAppBarTitle}),
  apps('Apps', {myoroAppTitle}),
  buttons('Buttons', {myoroButtonTitle, myoroIconTextButtonTitle}),
  cards('Cards', {myoroCardTitle});

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

      _ => throw AssertionError('[MyoroWidgetListEnum.getWidgetShowcase]: [Widget] does not exist.'),
    };
  }

  bool get isAccordions => this == accordions;
  bool get isAppBars => this == appBars;
  bool get isApps => this == apps;
  bool get isButtons => this == buttons;
  bool get isCards => this == cards;
}
