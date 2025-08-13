import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
part 'myoro_slider_configuration.g.dart';

/// Configuration of [MyoroSlider].
@immutable
@myoroModel
class MyoroSliderConfiguration with _$MyoroSliderConfigurationMixin {
  static const labelDefaultValue = '';
  static const currentValueTextDefaultValue = '';
  static const maxValueTextDefaultValue = '';
  static const footerTextDefaultValue = '';
  static const minDefaultValue = 0.0;
  static const maxDefaultValue = 1.0;

  const MyoroSliderConfiguration({
    this.label = labelDefaultValue,
    this.labelTextStyle,
    this.currentValueText = currentValueTextDefaultValue,
    this.maxValueText = maxValueTextDefaultValue,
    this.footerText = footerTextDefaultValue,
    this.min = minDefaultValue,
    this.max = maxDefaultValue,
    required this.value,
    required this.onChanged,
  }) : assert(min >= 0, '[MyoroSliderConfiguration]: [min] must be greater than or equal to 0.'),
       assert(max >= min, '[MyoroSliderConfiguration]: [max] must be greater than or equal to [min].'),
       assert(
         value >= min && value <= max,
         '[MyoroSliderConfiguration]: [value] must be greater than or equal to [min] and less than or equal to [max].',
       );

  // coverage:ignore-start
  factory MyoroSliderConfiguration.fake() {
    final min = faker.randomGenerator.decimal(scale: 20);
    final max = faker.randomGenerator.decimal(scale: 100, min: min);

    return MyoroSliderConfiguration(
      label: faker.lorem.word(),
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      currentValueText: faker.randomGenerator.boolean() ? faker.lorem.word() : currentValueTextDefaultValue,
      maxValueText: faker.randomGenerator.boolean() ? faker.lorem.word() : maxValueTextDefaultValue,
      footerText: faker.randomGenerator.boolean() ? faker.lorem.word() : footerTextDefaultValue,
      min: min,
      max: max,
      value: faker.randomGenerator.decimal(scale: max, min: min),
      onChanged: ((_) {}),
    );
  }
  // coverage:ignore-end

  /// Label of the slider.
  final String label;

  /// [TextStyle] of the label.
  final TextStyle? labelTextStyle;

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

  /// Value of the slider.
  final double value;

  /// Function executed whenever the value of the slider changes.
  final MyoroSliderOnChanged onChanged;
}
