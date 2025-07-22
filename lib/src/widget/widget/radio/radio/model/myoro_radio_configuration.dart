import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_radio_configuration.g.dart';

/// Configuration of [MyoroRadio].
@immutable
@myoroModel
class MyoroRadioConfiguration with _$MyoroRadioConfigurationMixin {
  static const labelDefaultValue = '';

  const MyoroRadioConfiguration({
    this.controller,
    this.initialValue,
    this.label = labelDefaultValue,
    this.labelTextStyle,
    this.onChanged,
  }) : assert(
         !(controller != null && initialValue != null),
         '[MyoroRadio]: If [controller] is provided, set the initial '
         'value within the [MyoroRadioController]\'s constructor.',
       );

  factory MyoroRadioConfiguration.fake({bool? controllerProvided}) {
    final controller = controllerProvided ?? faker.randomGenerator.boolean() ? MyoroRadioController() : null;
    return MyoroRadioConfiguration(
      controller: controller,
      initialValue: controller == null ? faker.randomGenerator.boolean() : null,
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : labelDefaultValue,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    );
  }

  /// [ValueNotifier] to manage state externally.
  final MyoroRadioController? controller;

  /// Value of the radio.
  ///
  /// Typically used as the initial value, but this member may also
  /// be used to change the value of the radio externally in the
  /// [Widget] state of the parent using [MyoroRadio] via rebuild.
  final bool? initialValue;

  /// Label to the right of the radio.
  final String label;

  /// [TextStyle] of [label].
  final TextStyle? labelTextStyle;

  /// Function executed when the [MyoroRadio] is clicked.
  final MyoroRadioOnChanged? onChanged;
}
