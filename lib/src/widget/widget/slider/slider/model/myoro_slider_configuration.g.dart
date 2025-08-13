// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_slider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

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
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.currentValueText == self.currentValueText &&
        other.maxValueText == self.maxValueText &&
        other.footerText == self.footerText &&
        other.min == self.min &&
        other.max == self.max &&
        other.value == self.value &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.labelTextStyle,
      self.currentValueText,
      self.maxValueText,
      self.footerText,
      self.min,
      self.max,
      self.value,
      self.onChanged,
    );
  }

  @override
  String toString() =>
      'MyoroSliderConfiguration(\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  currentValueText: ${self.currentValueText},\n'
      '  maxValueText: ${self.maxValueText},\n'
      '  footerText: ${self.footerText},\n'
      '  min: ${self.min},\n'
      '  max: ${self.max},\n'
      '  value: ${self.value},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroSliderConfigurationExtension on MyoroSliderConfiguration {
  MyoroSliderConfiguration copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    String? currentValueText,
    String? maxValueText,
    String? footerText,
    double? min,
    double? max,
    double? value,
    void Function(double)? onChanged,
  }) {
    return MyoroSliderConfiguration(
      label: label ?? self.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      currentValueText: currentValueText ?? self.currentValueText,
      maxValueText: maxValueText ?? self.maxValueText,
      footerText: footerText ?? self.footerText,
      min: min ?? self.min,
      max: max ?? self.max,
      value: value ?? self.value,
      onChanged: onChanged ?? self.onChanged,
    );
  }
}
