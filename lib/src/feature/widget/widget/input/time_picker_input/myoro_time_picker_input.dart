import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_time_picker.dart';
part '_widget/_input.dart';
part '_widget/_myoro_time_picker_input_state.dart';

/// Time picker input (click time, no typy typy).
class MyoroTimePickerInput extends StatefulWidget {
  const MyoroTimePickerInput({super.key, this.style = const MyoroInputStyle(), required this.onChanged});

  /// Style.
  final MyoroInputStyle style;

  /// Callback executed when the time changed.
  final MyoroTimePickerInputOnChanged onChanged;

  /// Create state function.
  @override
  State<MyoroTimePickerInput> createState() => _MyoroTimePickerInputState();
}
