import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_group_radio_state.dart';

/// A group of [MyoroRadio]s.
class MyoroGroupRadio extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroGroupRadioStyle();

  /// Default value of [direction].
  static const directionDefaultValue = Axis.vertical;

  /// Default constructor.
  MyoroGroupRadio({
    super.key,
    this.style = styleDefaultValue,
    this.controller,
    this.direction = directionDefaultValue,
    this.onChanged,
    this.radios,
  }) : assert(
         !(controller != null && radios != null),
         '[MyoroGroupRadio]: If you are providing [controller], you must '
         'pass [radios] within its constructor and remove [radios] here.',
       ),
       assert(
         controller == null ? MyoroGroupRadioController.radiosAreValid(radios!) : true,
         '[MyoroGroupRadio]: [radios] provided are not valid, see [MyoroGroupRadioController.radiosAreValid].',
       );

  /// Style.
  final MyoroGroupRadioStyle style;

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

  /// Create state function.
  @override
  State<MyoroGroupRadio> createState() => _MyoroGroupRadioState();
}
