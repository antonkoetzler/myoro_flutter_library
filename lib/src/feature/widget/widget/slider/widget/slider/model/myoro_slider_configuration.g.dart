// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_slider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSliderConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSliderConfiguration with _$MyoroSliderConfigurationMixin {}
/// ```
mixin _$MyoroSliderConfigurationMixin {
  MyoroSliderConfiguration get self => this as MyoroSliderConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderConfiguration &&
        other.runtimeType == runtimeType &&
        other.value == self.value &&
        other.onChanged == self.onChanged &&
        other.label == self.label &&
        other.currentValueText == self.currentValueText &&
        other.maxValueText == self.maxValueText &&
        other.footerText == self.footerText &&
        other.min == self.min &&
        other.max == self.max;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.value,
      self.onChanged,
      self.label,
      self.currentValueText,
      self.maxValueText,
      self.footerText,
      self.min,
      self.max,
    );
  }

  @override
  String toString() =>
      'MyoroSliderConfiguration(\n'
      '  value: ${self.value},\n'
      '  onChanged: ${self.onChanged},\n'
      '  label: ${self.label},\n'
      '  currentValueText: ${self.currentValueText},\n'
      '  maxValueText: ${self.maxValueText},\n'
      '  footerText: ${self.footerText},\n'
      '  min: ${self.min},\n'
      '  max: ${self.max},\n'
      ');';
}
