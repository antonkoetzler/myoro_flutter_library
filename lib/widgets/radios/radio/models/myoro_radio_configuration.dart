import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_radio_configuration.g.dart';

/// Configuration of [MyoroRadio].
@myoroModel
class MyoroRadioConfiguration with $MyoroRadioConfigurationMixin {
  static const initialValueDefaultValue = false;

  /// [ValueNotifier] to manage state externally.
  final MyoroRadioController? notifier;

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
         'value within the [MyoroRadioController]\'s constructor.',
       );
}
