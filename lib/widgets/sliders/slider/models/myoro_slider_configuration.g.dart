// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_slider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroSliderConfigurationExtension on MyoroSliderConfiguration {
  MyoroSliderConfiguration copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    double? width,
    bool widthProvided = true,
    String Function(double)? currentValueIndicatorTextBuilder,
    bool currentValueIndicatorTextBuilderProvided = true,
    String Function(double)? maxValueIndicatorTextBuilder,
    bool maxValueIndicatorTextBuilderProvided = true,
    String Function(double)? footerIndicatorTextBuilder,
    bool footerIndicatorTextBuilderProvided = true,
    void Function(double)? onChanged,
  }) {
    return MyoroSliderConfiguration(
      label: label ?? this.label,
      labelTextStyle:
          labelTextStyleProvided
              ? (labelTextStyle ?? this.labelTextStyle)
              : null,
      width: widthProvided ? (width ?? this.width) : null,
      currentValueIndicatorTextBuilder:
          currentValueIndicatorTextBuilderProvided
              ? (currentValueIndicatorTextBuilder ??
                  this.currentValueIndicatorTextBuilder)
              : null,
      maxValueIndicatorTextBuilder:
          maxValueIndicatorTextBuilderProvided
              ? (maxValueIndicatorTextBuilder ??
                  this.maxValueIndicatorTextBuilder)
              : null,
      footerIndicatorTextBuilder:
          footerIndicatorTextBuilderProvided
              ? (footerIndicatorTextBuilder ?? this.footerIndicatorTextBuilder)
              : null,
      onChanged: onChanged ?? this.onChanged,
    );
  }
}

/// Apply this mixin to [MyoroSliderConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSliderConfiguration with $MyoroSliderConfigurationMixin {}
/// ```
mixin $MyoroSliderConfigurationMixin {
  MyoroSliderConfiguration get self => this as MyoroSliderConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.width == self.width &&
        other.currentValueIndicatorTextBuilder ==
            self.currentValueIndicatorTextBuilder &&
        other.maxValueIndicatorTextBuilder ==
            self.maxValueIndicatorTextBuilder &&
        other.footerIndicatorTextBuilder == self.footerIndicatorTextBuilder &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.labelTextStyle,
      self.width,
      self.currentValueIndicatorTextBuilder,
      self.maxValueIndicatorTextBuilder,
      self.footerIndicatorTextBuilder,
      self.onChanged,
    );
  }

  @override
  String toString() =>
      'MyoroSliderConfiguration(\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  width: ${self.width},\n'
      '  currentValueIndicatorTextBuilder: ${self.currentValueIndicatorTextBuilder},\n'
      '  maxValueIndicatorTextBuilder: ${self.maxValueIndicatorTextBuilder},\n'
      '  footerIndicatorTextBuilder: ${self.footerIndicatorTextBuilder},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
