// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_radio_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroRadioConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroRadioConfiguration with _$MyoroRadioConfigurationMixin {}
/// ```
mixin _$MyoroRadioConfigurationMixin {
  MyoroRadioConfiguration get self => this as MyoroRadioConfiguration;

  MyoroRadioConfiguration copyWith({
    MyoroRadioController? notifier,
    bool notifierProvided = true,
    bool? initialValue,
    bool initialValueProvided = true,
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    void Function(bool)? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroRadioConfiguration(
      notifier: notifierProvided ? (notifier ?? self.notifier) : null,
      initialValue:
          initialValueProvided ? (initialValue ?? self.initialValue) : null,
      label: label ?? self.label,
      labelTextStyle:
          labelTextStyleProvided
              ? (labelTextStyle ?? self.labelTextStyle)
              : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRadioConfiguration &&
        other.runtimeType == runtimeType &&
        other.notifier == self.notifier &&
        other.initialValue == self.initialValue &&
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.notifier,
      self.initialValue,
      self.label,
      self.labelTextStyle,
      self.onChanged,
    );
  }

  @override
  String toString() =>
      'MyoroRadioConfiguration(\n'
      '  notifier: ${self.notifier},\n'
      '  initialValue: ${self.initialValue},\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
