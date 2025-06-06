// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_checkbox_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroCheckboxConfigurationExtension on MyoroCheckboxConfiguration {
  MyoroCheckboxConfiguration copyWith({
    String? label,
    bool labelProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    bool? value,
    void Function(bool)? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroCheckboxConfiguration(
      label: labelProvided ? (label ?? this.label) : null,
      labelTextStyle:
          labelTextStyleProvided
              ? (labelTextStyle ?? this.labelTextStyle)
              : null,
      value: value ?? this.value,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}

/// Apply this mixin to [MyoroCheckboxConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroCheckboxConfiguration with $MyoroCheckboxConfigurationMixin {}
/// ```
mixin $MyoroCheckboxConfigurationMixin {
  MyoroCheckboxConfiguration get self => this as MyoroCheckboxConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.value == self.value &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.labelTextStyle,
      self.value,
      self.onChanged,
    );
  }

  @override
  String toString() =>
      'MyoroCheckboxConfiguration(\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  value: ${self.value},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
