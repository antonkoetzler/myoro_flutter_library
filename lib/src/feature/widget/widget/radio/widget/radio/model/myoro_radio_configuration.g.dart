// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_radio_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroRadioConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroRadioConfiguration with _$MyoroRadioConfigurationMixin {}
/// ```
mixin _$MyoroRadioConfigurationMixin {
  MyoroRadioConfiguration get self => this as MyoroRadioConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroRadioConfiguration &&
        other.runtimeType == runtimeType &&
        other.controller == self.controller &&
        other.initialValue == self.initialValue &&
        other.label == self.label &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.controller, self.initialValue, self.label, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroRadioConfiguration(\n'
      '  controller: ${self.controller},\n'
      '  initialValue: ${self.initialValue},\n'
      '  label: ${self.label},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
