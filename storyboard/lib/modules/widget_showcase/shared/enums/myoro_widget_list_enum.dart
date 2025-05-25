import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

/// Enum that stores all widgets of MFL.
enum MyoroWidgetListEnum {
  accordions('Accordions', {myoroAccordionTitle});

  const MyoroWidgetListEnum(this.categoryName, this.widgetNames);

  factory MyoroWidgetListEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  // ################## Accordions ##################
  static const myoroAccordionTitle = 'MyoroAccordion';
  // ################################################

  /// Name of the category of [Widget].
  final String categoryName;

  /// Names of each [Widget] in the category.
  final Set<String> widgetNames;

  bool get isAccordions => (this == accordions);
}
