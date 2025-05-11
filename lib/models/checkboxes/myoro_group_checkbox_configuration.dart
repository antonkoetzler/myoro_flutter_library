import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroGroupCheckbox].
class MyoroGroupCheckboxConfiguration extends Equatable {
  static const directionDefaultValue = Axis.vertical;

  /// [ValueNotifier] of the [MyoroGroupCheckbox] for more complex scope situations.
  final MyoroGroupCheckboxNotifier? notifier;

  /// Direction that the checkboxes will built in.
  final Axis direction;

  /// Spacing in between the checkboxes.
  final double? spacing;

  /// Spacing in between the checkboxes when the checkboxes are wrapping (cross axis spacing).
  final double? runSpacing;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  /// Checkboxes of the group.
  ///
  /// The [Map]'s key is the label of the checkbox, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupCheckboxItems? checkboxes;

  const MyoroGroupCheckboxConfiguration({
    this.notifier,
    this.direction = directionDefaultValue,
    this.spacing,
    this.runSpacing,
    this.onChanged,
    this.checkboxes,
  }) : assert(
         !(notifier != null && checkboxes != null),
         '[MyoroGroupCheckbox]: If you are providing [notifier], you must pass '
         '[checkboxes] within its constructor and remove [checkboxes] here.',
       ),
       assert(
         (notifier == null) ? ((checkboxes?.length ?? 0) > 0) : true,
         '[MyoroGroupCheckbox]: [checkboxes] must not be empty when [notifier] isn\'t provided.',
       );

  factory MyoroGroupCheckboxConfiguration.fake() {
    final bool notifierProvided = faker.randomGenerator.boolean();
    final MyoroGroupCheckboxItems checkboxes = {
      for (int i = 0; i < faker.randomGenerator.integer(10); i++) ...{
        '$i) ${faker.lorem.word()}': faker.randomGenerator.boolean(),
      },
    };

    return MyoroGroupCheckboxConfiguration(
      notifier: notifierProvided ? MyoroGroupCheckboxNotifier(checkboxes) : null,
      direction: Axis.values[faker.randomGenerator.integer(Axis.values.length)],
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      runSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      onChanged: faker.randomGenerator.boolean() ? ((_, __) {}) : null,
      checkboxes: notifierProvided ? null : checkboxes,
    );
  }

  MyoroGroupCheckboxConfiguration copyWith({
    MyoroGroupCheckboxNotifier? notifier,
    bool notifierProvided = true,
    Axis? direction,
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
    MyoroGroupCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
    MyoroGroupCheckboxItems? checkboxes,
    bool checkboxesProvided = true,
  }) {
    return MyoroGroupCheckboxConfiguration(
      notifier: notifierProvided ? (notifier ?? this.notifier) : null,
      direction: direction ?? this.direction,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      checkboxes: checkboxesProvided ? (checkboxes ?? this.checkboxes) : null,
    );
  }

  @override
  List<Object?> get props {
    return [notifier, direction, spacing, runSpacing, onChanged, checkboxes];
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxConfiguration(\n'
      '  notifier: $notifier,\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxes: $checkboxes,\n'
      ');';
}
