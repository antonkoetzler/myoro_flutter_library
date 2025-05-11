import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroSlider].
class MyoroSliderConfiguration extends Equatable {
  static const minValueDefaultValue = 0.0;
  static const maxValueDefaultValue = 1.0;
  static const initialValueDefaultValue = minValueDefaultValue;

  /// Label of the slider.
  final String label;

  /// [TextStyle] of the label.
  final TextStyle? labelTextStyle;

  /// [MyoroSlider]'s fixed width.
  final double? width;

  /// Minimum value of the slider.
  final double minValue;

  /// Maximum value of the slider.
  final double maxValue;

  /// Initial value of the slider.
  final double initialValue;

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
    this.minValue = minValueDefaultValue,
    this.maxValue = maxValueDefaultValue,
    this.initialValue = initialValueDefaultValue,
    this.currentValueIndicatorTextBuilder,
    this.maxValueIndicatorTextBuilder,
    this.footerIndicatorTextBuilder,
    required this.onChanged,
  });

  factory MyoroSliderConfiguration.fake() {
    final double minValue = faker.randomGenerator.decimal(scale: 10);
    final double maxValue = faker.randomGenerator.decimal(scale: 50, min: minValue);
    final double initialValue = faker.randomGenerator.decimal(scale: maxValue, min: minValue);

    return MyoroSliderConfiguration(
      label: faker.lorem.word(),
      labelTextStyle:
          faker.randomGenerator.boolean()
              ? MyoroTypographyDesignSystem.instance.randomTextStyle
              : null,
      width: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      minValue: minValue,
      maxValue: maxValue,
      initialValue: initialValue,
      currentValueIndicatorTextBuilder:
          faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      maxValueIndicatorTextBuilder:
          faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      footerIndicatorTextBuilder:
          faker.randomGenerator.boolean() ? ((_) => faker.lorem.word()) : null,
      onChanged: ((_) {}),
    );
  }

  MyoroSliderConfiguration copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    double? width,
    bool widthProvided = true,
    double? minValue,
    double? maxValue,
    double? initialValue,
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
      minValue: minValue ?? this.minValue,
      maxValue: maxValue ?? this.maxValue,
      initialValue: initialValue ?? this.initialValue,
      currentValueIndicatorTextBuilder:
          currentValueIndicatorTextBuilderProvided
              ? (currentValueIndicatorTextBuilder ?? this.currentValueIndicatorTextBuilder)
              : null,
      maxValueIndicatorTextBuilder:
          maxValueIndicatorTextBuilderProvided
              ? (maxValueIndicatorTextBuilder ?? this.maxValueIndicatorTextBuilder)
              : null,
      footerIndicatorTextBuilder:
          footerIndicatorTextBuilderProvided
              ? (footerIndicatorTextBuilder ?? this.footerIndicatorTextBuilder)
              : null,
      onChanged: onChanged ?? this.onChanged,
    );
  }

  @override
  List<Object?> get props {
    return [
      label,
      labelTextStyle,
      width,
      minValue,
      maxValue,
      initialValue,
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
      '  minValue: $minValue,\n'
      '  maxValue: $maxValue,\n'
      '  initialValue: $initialValue,\n'
      '  currentValueIndicatorTextBuilder: $currentValueIndicatorTextBuilder,\n'
      '  maxValueIndicatorTextBuilder: $maxValueIndicatorTextBuilder,\n'
      '  footerIndicatorTextBuilder: $footerIndicatorTextBuilder,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
