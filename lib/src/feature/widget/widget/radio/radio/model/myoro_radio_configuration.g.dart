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

  MyoroRadioConfiguration copyWith({
    MyoroRadioController? controller,
    bool controllerProvided = true,
    bool? initialValue,
    bool initialValueProvided = true,
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    void Function(bool)? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroRadioConfiguration(
      controller: controllerProvided ? (controller ?? self.controller) : null,
      initialValue: initialValueProvided ? (initialValue ?? self.initialValue) : null,
      label: label ?? self.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRadioConfiguration &&
        other.runtimeType == runtimeType &&
        other.controller == self.controller &&
        other.initialValue == self.initialValue &&
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.controller, self.initialValue, self.label, self.labelTextStyle, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroRadioConfiguration(\n'
      '  controller: ${self.controller},\n'
      '  initialValue: ${self.initialValue},\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
