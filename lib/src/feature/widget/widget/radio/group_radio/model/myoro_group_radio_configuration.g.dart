// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_radio_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroGroupRadioConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroGroupRadioConfiguration with _$MyoroGroupRadioConfigurationMixin {}
/// ```
mixin _$MyoroGroupRadioConfigurationMixin {
  MyoroGroupRadioConfiguration get self => this as MyoroGroupRadioConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioConfiguration &&
        other.runtimeType == runtimeType &&
        other.controller == self.controller &&
        other.direction == self.direction &&
        other.spacing == self.spacing &&
        other.runSpacing == self.runSpacing &&
        other.onChanged == self.onChanged &&
        other.radios == self.radios;
  }

  @override
  int get hashCode {
    return Object.hash(self.controller, self.direction, self.spacing, self.runSpacing, self.onChanged, self.radios);
  }

  @override
  String toString() =>
      'MyoroGroupRadioConfiguration(\n'
      '  controller: ${self.controller},\n'
      '  direction: ${self.direction},\n'
      '  spacing: ${self.spacing},\n'
      '  runSpacing: ${self.runSpacing},\n'
      '  onChanged: ${self.onChanged},\n'
      '  radios: ${self.radios},\n'
      ');';
}
