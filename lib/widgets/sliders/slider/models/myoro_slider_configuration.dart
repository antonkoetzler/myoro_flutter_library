import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroSlider].
class MyoroSliderConfiguration extends Equatable {
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
  final MyoroSliderOnChanged onChanged;

  const MyoroSliderConfiguration({
    this.label = '',
    this.labelTextStyle,
    this.width,
    this.currentValueIndicatorTextBuilder,
    this.maxValueIndicatorTextBuilder,
    this.footerIndicatorTextBuilder,
    required this.onChanged,
  });

  MyoroSliderConfiguration.fake()
    : label = faker.lorem.word(),
      labelTextStyle = faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      width = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      currentValueIndicatorTextBuilder = faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      maxValueIndicatorTextBuilder = faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      footerIndicatorTextBuilder = faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      onChanged = ((_) {});

  MyoroSliderConfiguration copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    double? width,
    bool widthProvided = true,
    MyoroSliderIndicatorTextBuilder? currentValueIndicatorTextBuilder,
    bool currentValueIndicatorTextBuilderProvided = true,
    MyoroSliderIndicatorTextBuilder? maxValueIndicatorTextBuilder,
    bool maxValueIndicatorTextBuilderProvided = true,
    MyoroSliderIndicatorTextBuilder? footerIndicatorTextBuilder,
    bool footerIndicatorTextBuilderProvided = true,
    MyoroSliderOnChanged? onChanged,
  }) {
    return MyoroSliderConfiguration(
      label: label ?? this.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      width: widthProvided ? (width ?? this.width) : null,
      currentValueIndicatorTextBuilder:
          currentValueIndicatorTextBuilderProvided
              ? (currentValueIndicatorTextBuilder ?? this.currentValueIndicatorTextBuilder)
              : null,
      maxValueIndicatorTextBuilder:
          maxValueIndicatorTextBuilderProvided
              ? (maxValueIndicatorTextBuilder ?? this.maxValueIndicatorTextBuilder)
              : null,
      footerIndicatorTextBuilder:
          footerIndicatorTextBuilderProvided ? (footerIndicatorTextBuilder ?? this.footerIndicatorTextBuilder) : null,
      onChanged: onChanged ?? this.onChanged,
    );
  }

  @override
  List<Object?> get props {
    return [
      label,
      labelTextStyle,
      width,
      currentValueIndicatorTextBuilder,
      maxValueIndicatorTextBuilder,
      footerIndicatorTextBuilder,
      onChanged,
    ];
  }

  @override
  String toString() =>
      'MyoroSliderConfiguration(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  width: $width,\n'
      '  currentValueIndicatorTextBuilder: $currentValueIndicatorTextBuilder,\n'
      '  maxValueIndicatorTextBuilder: $maxValueIndicatorTextBuilder,\n'
      '  footerIndicatorTextBuilder: $footerIndicatorTextBuilder,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
