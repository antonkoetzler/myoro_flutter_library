import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
part 'myoro_slider_configuration.g.dart';

/// Configuration of [MyoroSlider].
@myoroModel
class MyoroSliderConfiguration extends MyoroSliderBaseConfiguration with _$MyoroSliderConfigurationMixin {
  /// Creates a new instance of [MyoroSliderConfiguration].
  const MyoroSliderConfiguration({
    super.label,
    super.currentValueText,
    super.maxValueText,
    super.footerText,
    super.min,
    super.max,
    required this.value,
    required this.onChanged,
  }) : assert(
         value >= min && value <= max,
         '[MyoroSliderConfiguration]: [value] must be greater than or equal to [min] and less than or equal to [max].',
       );

  /// Creates a fake instance of [MyoroSliderConfiguration] for testing purposes.
  factory MyoroSliderConfiguration.fake() {
    final min = faker.randomGenerator.integer(20).toDouble();
    final max = faker.randomGenerator.integer(100, min: min.toInt() + 1).toDouble();

    return MyoroSliderConfiguration(
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
      value: faker.randomGenerator.decimal(scale: max - min, min: 0) + min,
      onChanged: ((_) {}),
    );
  }

  /// Value of the [MyoroSlider].
  final double value;

  /// Callback executed when the value is changed.
  final MyoroSliderOnChanged<double> onChanged;

  @override
  Widget get widget {
    return Slider(value: value, min: min, max: max, onChanged: onChanged);
  }
}
