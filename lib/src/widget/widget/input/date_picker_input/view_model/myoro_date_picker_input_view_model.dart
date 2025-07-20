import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_date_picker_input_state.dart';

/// View model of [MyoroDatePickerInput].
class MyoroDatePickerInputViewModel {
  MyoroDatePickerInputViewModel(MyoroDatePickerInputConfiguration configuration)
    : _state = MyoroDatePickerInputState(configuration);

  final MyoroDatePickerInputState _state;
  MyoroDatePickerInputState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Retrieves the size of the [MyoroInput].
  void getInputSize() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderBox = _state.inputKey.currentContext!.findRenderObject() as RenderBox;
      _state.inputSizeController.value = renderBox.size;
    });
  }

  /// Opens the date picker [Widget].
  void openDatePicker(BuildContext context, Widget Function(Widget? child) builder) async {
    final DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 500)),
      builder: (_, child) => builder(child),
    );
    if (date == null) return;
    _state.inputController.text = DateFormat('dd/MM/yyyy').format(date);
  }
}
