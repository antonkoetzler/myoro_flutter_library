// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_range_slider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroRangeSliderConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroRangeSliderConfiguration with _$MyoroRangeSliderConfigurationMixin {}
/// ```
mixin _$MyoroRangeSliderConfigurationMixin {
  MyoroRangeSliderConfiguration get self => this as MyoroRangeSliderConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroRangeSliderConfiguration &&
        other.runtimeType == runtimeType &&
        other.values == self.values &&
        other.onChanged == self.onChanged &&
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.currentValueText == self.currentValueText &&
        other.maxValueText == self.maxValueText &&
        other.footerText == self.footerText &&
        other.min == self.min &&
        other.max == self.max;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.values,
      self.onChanged,
      self.label,
      self.labelTextStyle,
      self.currentValueText,
      self.maxValueText,
      self.footerText,
      self.min,
      self.max,
    );
  }

  @override
  String toString() =>
      'MyoroRangeSliderConfiguration(\n'
      '  values: ${self.values},\n'
      '  onChanged: ${self.onChanged},\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  currentValueText: ${self.currentValueText},\n'
      '  maxValueText: ${self.maxValueText},\n'
      '  footerText: ${self.footerText},\n'
      '  min: ${self.min},\n'
      '  max: ${self.max},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroRangeSliderConfigurationExtension on MyoroRangeSliderConfiguration {
  MyoroRangeSliderConfiguration copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    String? currentValueText,
    String? maxValueText,
    String? footerText,
    double? min,
    double? max,
    RangeValues? values,
    void Function(RangeValues)? onChanged,
  }) {
    return MyoroRangeSliderConfiguration(
      label: label ?? self.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      currentValueText: currentValueText ?? self.currentValueText,
      maxValueText: maxValueText ?? self.maxValueText,
      footerText: footerText ?? self.footerText,
      min: min ?? self.min,
      max: max ?? self.max,
      values: values ?? self.values,
      onChanged: onChanged ?? self.onChanged,
    );
  }
}
