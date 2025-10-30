import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_date_picker.dart';
part '_widget/_input.dart';
part '_widget/_myoro_date_picker_input_state.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends StatefulWidget {
  const MyoroDatePickerInput({super.key, this.style = const MyoroInputStyle(), this.inputController});

  /// Style.
  final MyoroInputStyle style;

  /// [MyoroInput.inputController]
  final TextEditingController? inputController;

  /// Create state function.
  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}
