// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_basic_divider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroBasicDividerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroBasicDividerConfiguration with _$MyoroBasicDividerConfigurationMixin {}
/// ```
mixin _$MyoroBasicDividerConfigurationMixin {
  MyoroBasicDividerConfiguration get self => this as MyoroBasicDividerConfiguration;

  MyoroBasicDividerConfiguration copyWith({
    Axis? direction,
    double? shortValue,
    bool shortValueProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
  }) {
    return MyoroBasicDividerConfiguration(
      direction: direction ?? self.direction,
      shortValue: shortValueProvided ? (shortValue ?? self.shortValue) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBasicDividerConfiguration &&
        other.runtimeType == runtimeType &&
        other.direction == self.direction &&
        other.shortValue == self.shortValue &&
        other.padding == self.padding;
  }

  @override
  int get hashCode {
    return Object.hash(self.direction, self.shortValue, self.padding);
  }

  @override
  String toString() =>
      'MyoroBasicDividerConfiguration(\n'
      '  direction: ${self.direction},\n'
      '  shortValue: ${self.shortValue},\n'
      '  padding: ${self.padding},\n'
      ');';
}
