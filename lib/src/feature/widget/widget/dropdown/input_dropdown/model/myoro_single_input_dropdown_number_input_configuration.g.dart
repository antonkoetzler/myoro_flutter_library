// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_input_dropdown_number_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleInputDropdownNumberInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleInputDropdownNumberInputConfiguration with _$MyoroSingleInputDropdownNumberInputConfigurationMixin {}
/// ```
mixin _$MyoroSingleInputDropdownNumberInputConfigurationMixin {
  MyoroSingleInputDropdownNumberInputConfiguration get self => this as MyoroSingleInputDropdownNumberInputConfiguration;

  MyoroSingleInputDropdownNumberInputConfiguration copyWith({
    double? min,
    double? max,
    bool maxProvided = true,
    int? decimalPlaces,
  }) {
    return MyoroSingleInputDropdownNumberInputConfiguration(
      min: min ?? self.min,
      max: maxProvided ? (max ?? self.max) : null,
      decimalPlaces: decimalPlaces ?? self.decimalPlaces,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleInputDropdownNumberInputConfiguration &&
        other.runtimeType == runtimeType &&
        other.min == self.min &&
        other.max == self.max &&
        other.decimalPlaces == self.decimalPlaces;
  }

  @override
  int get hashCode {
    return Object.hash(self.min, self.max, self.decimalPlaces);
  }

  @override
  String toString() =>
      'MyoroSingleInputDropdownNumberInputConfiguration(\n'
      '  min: ${self.min},\n'
      '  max: ${self.max},\n'
      '  decimalPlaces: ${self.decimalPlaces},\n'
      ');';
}
