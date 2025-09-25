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

  MyoroGroupRadioConfiguration({this.controller, this.direction = directionDefaultValue, this.onChanged, this.radios})
    : assert(
        !(controller != null && radios != null),
        '[MyoroGroupRadio]: If you are providing [controller], you must '
        'pass [radios] within its constructor and remove [radios] here.',
      ),
      assert(
        controller == null ? MyoroGroupRadioController.radiosAreValid(radios!) : true,
        '[MyoroGroupRadio]: [radios] provided are not valid, see [MyoroGroupRadioController.radiosAreValid].',
      );

  // coverage:ignore-start
  factory MyoroGroupRadioConfiguration.fake({bool? controllerProvided}) {
    controllerProvided = controllerProvided ?? faker.randomGenerator.boolean();

    final radios = {
      for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) ...{'$i) ${faker.lorem.word()}': i == 0},
    };

    return MyoroGroupRadioConfiguration(
      controller: controllerProvided ? MyoroGroupRadioController(radios) : null,
      direction: myoroFake<Axis>(),
      onChanged: faker.randomGenerator.boolean() ? ((_, _) {}) : null,
      radios: controllerProvided ? null : radios,
    );
  }
  // coverage:ignore-end

  /// [ValueNotifier] of the [MyoroGroupRadio] for more complex scope situations.
  final MyoroGroupRadioController? controller;

  /// Direction that the radios will built in.
  final Axis direction;

  /// Function executed when any of the radio's values are changed.
  final MyoroGroupRadioOnChanged? onChanged;

  /// Radios of the group.
  ///
  /// The [Map]'s key is the label of the radio, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupRadioItems? radios;
}
