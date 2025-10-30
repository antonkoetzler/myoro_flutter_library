import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_group_checkbox_state.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroGroupCheckboxStyle();

  /// Default value of [direction].
  static const directionDefaultValue = Axis.vertical;

  const MyoroGroupCheckbox({
    super.key,
    this.style = styleDefaultValue,
    this.checkboxes,
    this.controller,
    this.direction = directionDefaultValue,
    this.onChanged,
  }) : assert(
         (controller != null) ^ (checkboxes != null),
         '[MyoroGroupCheckbox]: [controller] (x)or [checkboxes] must be provided.',
       );

  /// Style.
  final MyoroGroupCheckboxStyle style;

  /// Checkboxes of the [MyoroGroupCheckbox].
  final MyoroGroupCheckboxItems? checkboxes;

  /// Controller.
  final MyoroGroupCheckboxController? controller;

  /// Direction that the checkboxes will built in.
  final Axis direction;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  /// Create state function.
  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}
