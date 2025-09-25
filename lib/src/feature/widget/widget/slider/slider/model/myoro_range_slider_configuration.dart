import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_range_slider_configuration.g.dart';

/// Configuration model of [MyoroRangeSlider].
@myoroModel
final class MyoroRangeSliderConfiguration extends MyoroSliderBaseConfiguration
    with _$MyoroRangeSliderConfigurationMixin {
  MyoroRangeSliderConfiguration({
    super.label,
    super.currentValueText,
    super.maxValueText,
    super.footerText,
    super.min,
    super.max,
    required this.values,
    required this.onChanged,
  }) : assert(
         values.start >= min && values.start <= max,
         '[MyoroSliderConfiguration]: [value] must be greater than or equal to [min] and less than or equal to [max].',
       ),
       assert(
         values.end >= min && values.end <= max,
         '[MyoroSliderConfiguration]: [value] must be greater than or equal to [min] and less than or equal to [max].',
       ),
       assert(values.start <= values.end, '[MyoroSliderConfiguration]: [start] must be less than or equal to [end].');

  // coverage:ignore-start
  factory MyoroRangeSliderConfiguration.fake() {
    final min = faker.randomGenerator.integer(20).toDouble();
    final max = faker.randomGenerator.integer(100, min: min.toInt()).toDouble();

    final range = max - min;
    final start = range == 0 ? min : faker.randomGenerator.decimal(scale: range, min: min);
    final end = (max - start) == 0 ? start : faker.randomGenerator.decimal(scale: max - start, min: start);

    return MyoroRangeSliderConfiguration(
      label: faker.lorem.word(),
      currentValueText: faker.randomGenerator.boolean()
          ? faker.lorem.word()
          : MyoroSliderBaseConfiguration.currentValueTextDefaultValue,
      maxValueText: faker.randomGenerator.boolean()
          ? faker.lorem.word()
          : MyoroSliderBaseConfiguration.maxValueTextDefaultValue,
      footerText: faker.randomGenerator.boolean()
          ? faker.lorem.word()
          : MyoroSliderBaseConfiguration.footerTextDefaultValue,
      min: min,
      max: max,
      values: RangeValues(start, end),
      onChanged: ((_) {}),
    );
  }
  // coverage:ignore-end

  /// Start and end values of the [MyoroRangeSlider].
  final RangeValues values;

  /// Callback executed when the values are changed.
  final MyoroSliderOnChanged<RangeValues> onChanged;

  @override
  Widget get widget {
    return RangeSlider(values: values, min: min, max: max, onChanged: onChanged);
  }
}
