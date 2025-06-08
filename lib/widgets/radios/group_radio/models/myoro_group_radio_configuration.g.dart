// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_radio_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroGroupRadioConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroGroupRadioConfiguration with _$MyoroGroupRadioConfigurationMixin {}
/// ```
mixin _$MyoroGroupRadioConfigurationMixin {
  MyoroGroupRadioConfiguration get self => this as MyoroGroupRadioConfiguration;

  MyoroGroupRadioConfiguration copyWith({
    MyoroGroupRadioController? notifier,
    bool notifierProvided = true,
    Axis? direction,
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
    void Function(String, Map<String, bool>)? onChanged,
    bool onChangedProvided = true,
    Map<String, bool>? radios,
    bool radiosProvided = true,
  }) {
    return MyoroGroupRadioConfiguration(
      notifier: notifierProvided ? (notifier ?? self.notifier) : null,
      direction: direction ?? self.direction,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? self.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      radios: radiosProvided ? (radios ?? self.radios) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioConfiguration &&
        other.runtimeType == runtimeType &&
        other.notifier == self.notifier &&
        other.direction == self.direction &&
        other.spacing == self.spacing &&
        other.runSpacing == self.runSpacing &&
        other.onChanged == self.onChanged &&
        other.radios == self.radios;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.notifier,
      self.direction,
      self.spacing,
      self.runSpacing,
      self.onChanged,
      self.radios,
    );
  }

  @override
  String toString() =>
      'MyoroGroupRadioConfiguration(\n'
      '  notifier: ${self.notifier},\n'
      '  direction: ${self.direction},\n'
      '  spacing: ${self.spacing},\n'
      '  runSpacing: ${self.runSpacing},\n'
      '  onChanged: ${self.onChanged},\n'
      '  radios: ${self.radios},\n'
      ');';
}
