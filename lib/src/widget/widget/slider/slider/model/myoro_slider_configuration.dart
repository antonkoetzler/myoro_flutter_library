import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_slider_configuration.g.dart';

/// Configuration of [MyoroSlider].
@myoroModel
class MyoroSliderConfiguration with _$MyoroSliderConfigurationMixin {
  static const labelDefaultValue = '';

  /// Label of the slider.
  final String label;

  /// [TextStyle] of the label.
  final TextStyle? labelTextStyle;

  /// [MyoroSlider]'s fixed width.
  final double? width;

  /// Text builder for the left of the slider.
  final MyoroSliderIndicatorTextBuilder? currentValueIndicatorTextBuilder;

  /// Text builder for the right of the slider.
  final MyoroSliderIndicatorTextBuilder? maxValueIndicatorTextBuilder;

  /// Text builder for the bottom of the slider.
  final MyoroSliderIndicatorTextBuilder? footerIndicatorTextBuilder;

  /// Function executed whenever the value of the slider changes.
  final MyoroSliderOnChanged? onChanged;

  const MyoroSliderConfiguration({
    this.label = labelDefaultValue,
    this.labelTextStyle,
    this.width,
    this.currentValueIndicatorTextBuilder,
    this.maxValueIndicatorTextBuilder,
    this.footerIndicatorTextBuilder,
    this.onChanged,
  });

  MyoroSliderConfiguration.fake()
    : label = faker.lorem.word(),
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      width = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      currentValueIndicatorTextBuilder = faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      maxValueIndicatorTextBuilder = faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      footerIndicatorTextBuilder = faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      onChanged = faker.randomGenerator.boolean() ? ((_) {}) : null;
}
