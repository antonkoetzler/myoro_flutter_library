// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_checkbox_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroGroupCheckboxConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroGroupCheckboxConfiguration with _$MyoroGroupCheckboxConfigurationMixin {}
/// ```
mixin _$MyoroGroupCheckboxConfigurationMixin {
  MyoroGroupCheckboxConfiguration get self => this as MyoroGroupCheckboxConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupCheckboxConfiguration &&
        other.runtimeType == runtimeType &&
        other.direction == self.direction &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.direction, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxConfiguration(\n'
      '  direction: ${self.direction},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
