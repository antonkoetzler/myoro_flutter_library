import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroCheckbox].
class MyoroCheckboxConfiguration extends Equatable {
  /// [ValueNotifier] for more complex situations where [onChanged] does not suffice.
  final MyoroCheckboxNotifier? notifier;

  /// Label at the right of the checkbox.
  final String? label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Initial value of the checkbox.
  final bool? initialValue;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  const MyoroCheckboxConfiguration({
    this.notifier,
    this.label,
    this.labelTextStyle,
    this.initialValue,
    this.onChanged,
  }) : assert(
         !(notifier != null && initialValue != null),
         '[MyoroCheckbox]: If [notifier] is provided, set the initial '
         'value within the [MyoroRadioNotifier]\'s constructor.',
       );

  factory MyoroCheckboxConfiguration.fake() {
    final bool notifierProvided = faker.randomGenerator.boolean();

    return MyoroCheckboxConfiguration(
      notifier: notifierProvided ? MyoroCheckboxNotifier() : null,
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      labelTextStyle:
          faker.randomGenerator.boolean()
              ? MyoroTypographyDesignSystem.instance.randomTextStyle
              : null,
      initialValue: notifierProvided ? null : faker.randomGenerator.boolean(),
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    );
  }

  MyoroCheckboxConfiguration copyWith({
    MyoroCheckboxNotifier? notifier,
    bool notifierProvided = true,
    String? label,
    bool labelProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    bool? initialValue,
    bool initialValueProvided = true,
    MyoroCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroCheckboxConfiguration(
      notifier: notifierProvided ? (notifier ?? this.notifier) : null,
      label: labelProvided ? (label ?? this.label) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      initialValue: initialValueProvided ? (initialValue ?? this.initialValue) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [notifier, label, labelTextStyle, initialValue, onChanged];
  }

  @override
  String toString() =>
      'MyoroCheckboxConfiguration(\n'
      '  notifier: $notifier,\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  initialValue: $initialValue,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
