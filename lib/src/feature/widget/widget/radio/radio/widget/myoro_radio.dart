import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_radio_state.dart';

/// Single radio(box) [Widget].
class MyoroRadio extends StatefulWidget {
  /// Default value of [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroRadio({
    super.key,
    this.style = const MyoroRadioStyle(),
    this.controller,
    this.initialValue,
    this.label = labelDefaultValue,
    this.onChanged,
  }) : assert(
         !(controller != null && initialValue != null),
         '[MyoroRadio]: If [controller] is provided, set the initial '
         'value within the [MyoroRadioController]\'s constructor.',
       );

  /// Style.
  final MyoroRadioStyle style;

  /// [ValueNotifier] to manage state externally.
  final ValueNotifier<bool>? controller;

  /// Value of the radio.
  ///
  /// Typically used as the initial value, but this member may also
  /// be used to change the value of the radio externally in the
  /// [Widget] state of the parent using [MyoroRadio] via rebuild.
  final bool? initialValue;

  /// Label to the right of the radio.
  final String label;

  /// Function executed when the [MyoroRadio] is clicked.
  final MyoroRadioOnChanged? onChanged;

  /// Create state function.
  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}
