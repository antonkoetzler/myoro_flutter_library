import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_radio_state.dart';

/// Single radio(box) [Widget].
class MyoroRadio extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroRadioStyle();

  /// Default value of [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroRadio({
    super.key,
    this.style = styleDefaultValue,
    this.controller,
    this.value,
    this.label = labelDefaultValue,
    this.onChanged,
  }) : assert(
         !(controller != null && value != null),
         '[MyoroRadio]: If [controller] is provided, set the initial '
         'value within the [MyoroRadioController]\'s constructor.',
       );

  /// Style.
  final MyoroRadioStyle style;

  /// [ValueNotifier] to manage state externally.
  final ValueNotifier<bool>? controller;

  /// Value of the radio when [controller] isn't provided.
  final bool? value;

  /// Label to the right of the radio.
  final String label;

  /// Function executed when the [MyoroRadio] is clicked.
  final MyoroRadioOnChanged? onChanged;

  /// Create state function.
  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}
