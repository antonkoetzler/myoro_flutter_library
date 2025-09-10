import 'package:flutter/material.dart';

/// Abstract configuration model for a slider.
abstract class MyoroSliderBaseConfiguration {
  static const labelDefaultValue = '';
  static const currentValueTextDefaultValue = '';
  static const maxValueTextDefaultValue = '';
  static const footerTextDefaultValue = '';
  static const minDefaultValue = 0.0;
  static const maxDefaultValue = 1.0;

  const MyoroSliderBaseConfiguration({
    this.label = labelDefaultValue,
    this.currentValueText = currentValueTextDefaultValue,
    this.maxValueText = maxValueTextDefaultValue,
    this.footerText = footerTextDefaultValue,
    this.min = minDefaultValue,
    this.max = maxDefaultValue,
  });

  /// Label of the slider.
  final String label;

  /// Text builder for the left of the slider.
  final String currentValueText;

  /// Text builder for the right of the slider.
  final String maxValueText;

  /// Text builder for the bottom of the slider.
  final String footerText;

  /// Minimum value of the slider.
  final double min;

  /// Maximum value of the slider.
  final double max;

  MyoroSliderBaseConfiguration copyWith({
    String? label,
    String? currentValueText,
    String? maxValueText,
    String? footerText,
    double? min,
    double? max,
  });

  /// [Widget] builder.
  Widget get widget;
}
