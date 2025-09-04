// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_checkbox_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCheckboxConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroCheckboxConfiguration with _$MyoroCheckboxConfigurationMixin {}
/// ```
mixin _$MyoroCheckboxConfigurationMixin {
  MyoroCheckboxConfiguration get self => this as MyoroCheckboxConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.value == self.value &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.label, self.value, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroCheckboxConfiguration(\n'
      '  label: ${self.label},\n'
      '  value: ${self.value},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
