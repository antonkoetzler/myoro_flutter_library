import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the [MyoroRadio] is clicked.
typedef MyoroRadioOnChanged = void Function(bool enabled);

/// Configuration of [MyoroRadio].
class MyoroRadioConfiguration extends Equatable {
  static const initialValueDefaultValue = false;

  /// [ValueNotifier] to manage state externally.
  final MyoroRadioNotifier? notifier;

  /// Value of the radio.
  ///
  /// Typically used as the initial value, but this member may also
  /// be used to change the value of the radio externally in the
  /// [Widget] state of the parent using [MyoroRadio] via rebuild.
  final bool? initialValue;

  /// Label to the right of the radio.
  final String? label;

  /// [TextStyle] of [label].
  final TextStyle? labelTextStyle;

  /// Function executed when the [MyoroRadio] is clicked.
  final MyoroRadioOnChanged? onChanged;

  const MyoroRadioConfiguration({
    this.notifier,
    this.initialValue = initialValueDefaultValue,
    this.label,
    this.labelTextStyle,
    this.onChanged,
  }) : assert(
         !(notifier != null && initialValue != null),
         '[MyoroRadio]: If [notifier] is provided, set the initial '
         'value within the [MyoroRadioNotifier]\'s constructor.',
       );

  MyoroRadioConfiguration copyWith({
    MyoroRadioNotifier? notifier,
    bool notifierProvided = true,
    bool? initialValue,
    String? label,
    bool labelProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    MyoroRadioOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroRadioConfiguration(
      notifier: notifierProvided ? (notifier ?? this.notifier) : null,
      initialValue: initialValue ?? this.initialValue,
      label: labelProvided ? (label ?? this.label) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [notifier, initialValue, label, labelTextStyle, onChanged];
  }

  @override
  String toString() =>
      'MyoroRadioConfiguration(\n'
      '  notifier: $notifier,\n'
      '  initialValue: $initialValue,\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
