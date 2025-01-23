// Functions facilitating [Finder] objects to reduce the amount of code being written doing tests.
//
// NOTES:
// 1. Not supposed to be tested because this is only used within testing;
// 2. May not have all the functionality you would like as it is a work in progress as I test. Feel free to contribute!

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// #############
// # DROPDOWNS #
// #############
Finder myoroSingularDropdownFinder<T>({String? label}) {
  return find.byWidgetPredicate((Widget w) => w is MyoroSingularDropdown<T> && (label != null ? w.configuration.label == label : true));
}

// ##########
// # INPUTS #
// ##########
Finder myoroInputFinder({String? label}) {
  return find.byWidgetPredicate((Widget w) => w is MyoroInput && (label != null ? w.configuration.label == label : true));
}

// ###########
// # SLIDERS #
// ###########
Finder myoroSliderFinder({
  String? label,
  TextStyle? labelTextStyle,
  double? width,
  double? initialValue,
  double? minValue,
  double? maxValue,
  bool? currentValueIndicatorTextBuilderNotNull,
  bool? maxValueIndicatorTextBuilderNotNull,
  bool? footerIndicatorTextBuilderNotNull,
}) {
  return find.byWidgetPredicate(
    (Widget w) =>
        w is MyoroSlider &&
        (label != null ? w.label == label : true) &&
        (labelTextStyle != null ? w.labelTextStyle == labelTextStyle : true) &&
        (width != null ? w.width == width : true) &&
        (initialValue != null ? w.initialValue == initialValue : true) &&
        (minValue != null ? w.minValue == minValue : true) &&
        (maxValue != null ? w.maxValue == maxValue : true) &&
        (currentValueIndicatorTextBuilderNotNull != null ? ((w.currentValueIndicatorTextBuilder != null) == currentValueIndicatorTextBuilderNotNull) : true) &&
        (maxValueIndicatorTextBuilderNotNull != null ? ((w.maxValueIndicatorTextBuilder != null) == maxValueIndicatorTextBuilderNotNull) : true) &&
        (footerIndicatorTextBuilderNotNull != null ? ((w.footerIndicatorTextBuilder != null) == footerIndicatorTextBuilderNotNull) : true),
  );
}
