import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_date_picker_input_state.dart';

/// View model of [MyoroDatePickerInput].
class MyoroDatePickerInputViewModel {
  /// Default constructor.
  MyoroDatePickerInputViewModel(TextEditingController? inputController)
    : _state = MyoroDatePickerInputState(inputController);

  /// State.
  final MyoroDatePickerInputState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// On tap function.
  void onTap(BuildContext context, Widget Function(Widget? child) builder) async {
    final inputController = _state.inputController;
    final DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 500)),
      builder: (_, child) => builder(child!),
    );
    if (date == null) return;
    inputController.text = DateFormat('dd/MM/yyyy').format(date);
  }

  /// [_state] getter.
  MyoroDatePickerInputState get state {
    return _state;
  }
}
