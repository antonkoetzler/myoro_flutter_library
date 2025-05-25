import 'package:flutter/material.dart';

/// Enum that stores all widgets of MFL.
enum MyoroWidgetListEnum {
  accordions('Accordions', {myoroAccordionTitle});

  const MyoroWidgetListEnum(this.categoryName, this.widgetNames);

  // ################## Accordions ##################
  static const myoroAccordionTitle = 'MyoroAccordion';
  // ################################################

  /// Name of the category of [Widget].
  final String categoryName;

  /// Names of each [Widget] in the category.
  final Set<String> widgetNames;

  bool get isAccordions => (this == accordions);
}
