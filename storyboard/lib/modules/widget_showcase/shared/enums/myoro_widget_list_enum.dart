import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Enum that stores all widgets of MFL.
enum MyoroWidgetListEnum {
  accordions('Accordions', {myoroAccordionTitle}),
  appBars('App bars', {myoroAppBarTitle});

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

  static Widget getWidgetShowcase(String widgetName) {
    return switch (widgetName) {
      // Accordions
      myoroAccordionTitle => const MyoroAccordionWidgetShowcase(),

      // App bars
      myoroAppBarTitle => const MyoroAppBarWidgetShowcase(),

      _ => throw AssertionError('[MyoroWidgetListEnum.getWidgetShowcase]: [Widget] does not exist.'),
    };
  }

  bool get isAccordions => (this == accordions);
}
