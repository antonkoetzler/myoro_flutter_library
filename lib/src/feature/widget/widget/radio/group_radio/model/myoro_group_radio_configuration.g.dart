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

  MyoroGroupRadioConfiguration copyWith({
    MyoroGroupRadioController? controller,
    bool controllerProvided = true,
    Axis? direction,
    MyoroGroupRadioOnChanged? onChanged,
    bool onChangedProvided = true,
    MyoroGroupRadioItems? radios,
    bool radiosProvided = true,
  }) {
    return MyoroGroupRadioConfiguration(
      controller: controllerProvided ? (controller ?? self.controller) : null,
      direction: direction ?? self.direction,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      radios: radiosProvided ? (radios ?? self.radios) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioConfiguration &&
        other.runtimeType == runtimeType &&
        other.controller == self.controller &&
        other.direction == self.direction &&
        other.onChanged == self.onChanged &&
        other.radios == self.radios;
  }

  @override
  int get hashCode {
    return Object.hash(self.controller, self.direction, self.onChanged, self.radios);
  }

  @override
  String toString() =>
      'MyoroGroupRadioConfiguration(\n'
      '  controller: ${self.controller},\n'
      '  direction: ${self.direction},\n'
      '  onChanged: ${self.onChanged},\n'
      '  radios: ${self.radios},\n'
      ');';
}
