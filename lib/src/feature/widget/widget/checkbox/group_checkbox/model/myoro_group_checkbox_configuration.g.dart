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

  MyoroGroupCheckboxConfiguration copyWith({
    Axis? direction,
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
    void Function(String, Map<String, bool>)? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroGroupCheckboxConfiguration(
      direction: direction ?? self.direction,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? self.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupCheckboxConfiguration &&
        other.runtimeType == runtimeType &&
        other.direction == self.direction &&
        other.spacing == self.spacing &&
        other.runSpacing == self.runSpacing &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.direction, self.spacing, self.runSpacing, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxConfiguration(\n'
      '  direction: ${self.direction},\n'
      '  spacing: ${self.spacing},\n'
      '  runSpacing: ${self.runSpacing},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
