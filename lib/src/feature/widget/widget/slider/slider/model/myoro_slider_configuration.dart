import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
part 'myoro_slider_configuration.g.dart';

/// Configuration of [MyoroSlider].
@immutable
@myoroModel
class MyoroSliderConfiguration extends MyoroSliderBaseConfiguration with _$MyoroSliderConfigurationMixin {
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

  // coverage:ignore-start
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
  // coverage:ignore-end

  /// Value of the [MyoroSlider].
  final double value;

  /// Callback executed when the value is changed.
  final MyoroSliderOnChanged<double> onChanged;

  @override
  MyoroSliderConfiguration copyWith({
    String? label,
    String? currentValueText,
    String? maxValueText,
    String? footerText,
    double? min,
    double? max,
    double? value,
    MyoroSliderOnChanged<double>? onChanged,
  }) {
    return MyoroSliderConfiguration(
      label: label ?? this.label,
      currentValueText: currentValueText ?? this.currentValueText,
      maxValueText: maxValueText ?? this.maxValueText,
      footerText: footerText ?? this.footerText,
      min: min ?? this.min,
      max: max ?? this.max,
      value: value ?? this.value,
      onChanged: onChanged ?? this.onChanged,
    );
  }

  @override
  Widget get widget {
    return Slider(value: value, min: min, max: max, onChanged: onChanged);
  }
}
