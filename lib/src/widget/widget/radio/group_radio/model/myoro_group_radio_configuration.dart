import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_radio_configuration.g.dart';

/// Configuration of [MyoroGroupRadio].
@immutable
@myoroModel
class MyoroGroupRadioConfiguration with _$MyoroGroupRadioConfigurationMixin {
  static const directionDefaultValue = Axis.vertical;

  /// [ValueNotifier] of the [MyoroGroupRadio] for more complex scope situations.
  final MyoroGroupRadioController? notifier;

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
         notifier == null ? MyoroGroupRadioController.radiosAreValid(radios!) : true,
         '[MyoroGroupRadio]: [radios] provided are not valid, see [MyoroGroupRadioController.radiosAreValid].',
       );

  factory MyoroGroupRadioConfiguration.fake() {
    final bool notifierProvided = faker.randomGenerator.boolean();

    final radios = {
      for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) ...{'$i) ${faker.lorem.word()}': i == 0},
    };

    return MyoroGroupRadioConfiguration(
      notifier: notifierProvided ? MyoroGroupRadioController(radios) : null,
      direction: myoroFake<Axis>(),
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      runSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      onChanged: faker.randomGenerator.boolean() ? ((_, _) {}) : null,
      radios: notifierProvided ? null : radios,
    );
  }
}
