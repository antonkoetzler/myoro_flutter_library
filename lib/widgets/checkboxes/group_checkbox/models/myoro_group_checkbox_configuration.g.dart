// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_checkbox_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroGroupCheckboxConfigurationExtension
    on MyoroGroupCheckboxConfiguration {
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
      direction: direction ?? this.direction,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}

/// Apply this mixin to [MyoroGroupCheckboxConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroGroupCheckboxConfiguration with $MyoroGroupCheckboxConfigurationMixin {}
/// ```
mixin $MyoroGroupCheckboxConfigurationMixin {
  MyoroGroupCheckboxConfiguration get self =>
      this as MyoroGroupCheckboxConfiguration;

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
    return Object.hash(
      self.direction,
      self.spacing,
      self.runSpacing,
      self.onChanged,
    );
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
