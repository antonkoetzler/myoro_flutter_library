import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Radios of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupRadioItems = Map<String, bool>;

/// Function executed when any of the radio's values are changed.
typedef MyoroGroupRadioOnChanged =
    void Function(String keyChanged, MyoroGroupRadioItems items);

/// Configuration of [MyoroGroupRadio].
class MyoroGroupRadioConfiguration extends Equatable {
  static const directionDefaultValue = Axis.vertical;

  /// [ValueNotifier] of the [MyoroGroupRadio] for more complex scope situations.
  final MyoroGroupRadioNotifier? notifier;

  /// Direction that the radios will built in.
  final Axis direction;

  /// Spacing in between the radios.
  final double? spacing;

  /// Spacing in between the radios when the radios are wrapping (cross axis spacing).
  final double? runSpacing;

  /// Function executed when any of the radio's values are changed.
  final MyoroGroupRadioOnChanged? onChanged;

  /// Radios of the group.
  ///
  /// The [Map]'s key is the label of the radio, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupRadioItems? radios;

  MyoroGroupRadioConfiguration({
    this.notifier,
    this.direction = directionDefaultValue,
    this.spacing,
    this.runSpacing,
    this.onChanged,
    this.radios,
  }) : assert(
         !(notifier != null && radios != null),
         '[MyoroGroupRadio]: If you are providing [notifier], you must '
         'pass [radios] within its constructor and remove [radios] here.',
       ),
       assert(
         notifier == null
             ? MyoroGroupRadioNotifier.radiosAreValid(radios!)
             : true,
         '[MyoroGroupRadio]: [radios] provided are not valid, see [MyoroGroupRadioNotifier.radiosAreValid].',
       );

  factory MyoroGroupRadioConfiguration.fake() {
    final bool notifierProvided = faker.randomGenerator.boolean();

    final radios = {
      for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) ...{
        '$i) ${faker.lorem.word()}': i == 0,
      },
    };

    return MyoroGroupRadioConfiguration(
      notifier: notifierProvided ? MyoroGroupRadioNotifier(radios) : null,
      direction: myoroFake<Axis>(),
      spacing:
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.decimal(scale: 10)
              : null,
      runSpacing:
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.decimal(scale: 10)
              : null,
      onChanged: faker.randomGenerator.boolean() ? ((_, __) {}) : null,
      radios: notifierProvided ? null : radios,
    );
  }

  MyoroGroupRadioConfiguration copyWith({
    MyoroGroupRadioNotifier? notifier,
    bool notifierProvided = true,
    Axis? direction,
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
    MyoroGroupRadioOnChanged? onChanged,
    bool onChangedProvided = true,
    MyoroGroupRadioItems? radios,
    bool radiosProvided = true,
  }) {
    return MyoroGroupRadioConfiguration(
      notifier: notifierProvided ? (notifier ?? this.notifier) : null,
      direction: direction ?? this.direction,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      radios: radiosProvided ? (radios ?? this.radios) : null,
    );
  }

  @override
  List<Object?> get props {
    return [notifier, direction, spacing, runSpacing, onChanged, radios];
  }

  @override
  String toString() =>
      'MyoroGroupRadioConfiguration(\n'
      '  notifier: $notifier,\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      '  onChanged: $onChanged,\n'
      '  radios: $radios,\n'
      ');';
}
