import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_checkbox.dart';
part '../_widget/_label.dart';
part '../_widget/_myoro_checkbox_state.dart';

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroCheckboxStyle();

  /// Default value of [label].
  static const labelDefaultValue = '';

  /// Default value of [value].
  static const valueDefaultValue = false;

  const MyoroCheckbox({
    super.key,
    this.style = styleDefaultValue,
    this.label = labelDefaultValue,
    this.value = valueDefaultValue,
    this.onChanged,
  }) : assert(label.length > 0, '[MyoroCheckbox]: [label] must be provided.');

  /// Theme extension.
  final MyoroCheckboxStyle style;

  /// Label at the right of the checkbox.
  final String label;

  /// Value of the [MyoroCheckbox].
  final bool value;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  /// Create state function.
  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}
