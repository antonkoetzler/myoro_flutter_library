import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_time_picker.dart';
part '_widget/_input.dart';
part '_widget/_myoro_time_picker_input_state.dart';

/// Time picker input (click time, no typy typy).
class MyoroTimePickerInput extends StatefulWidget {
  /// Default label value.
  static const String labelDefaultValue = 'Time';

  /// Default constructor.
  const MyoroTimePickerInput({
    super.key,
    this.style = const MyoroInputStyle(),
    this.label = labelDefaultValue,
    this.validation,
    required this.onChanged,
  });

  /// Style.
  final MyoroInputStyle style;

  /// Label.
  final String label;

  /// Validation.
  final MyoroTimePickerInputValidation? validation;

  /// Callback executed when the time changed.
  final MyoroTimePickerInputOnChanged onChanged;

  /// Create state function.
  @override
  State<MyoroTimePickerInput> createState() {
    return _MyoroTimePickerInputState();
  }
}
