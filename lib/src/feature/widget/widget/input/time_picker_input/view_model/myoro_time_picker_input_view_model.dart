import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_time_picker_input_state.dart';

/// View model of [MyoroTimePickerInput].
class MyoroTimePickerInputViewModel {
  /// Default constructor.
  MyoroTimePickerInputViewModel(String label, MyoroTimePickerInputOnChanged onChanged)
    : _state = MyoroTimePickerInputState(label, onChanged);

  /// State.
  final MyoroTimePickerInputState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Opens the time picker [Widget].
  void openTimePicker(BuildContext context, Widget Function(Widget? child) builder) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (_, child) => builder(child),
    );
    if (time == null) return;
    final now = DateTime.now();
    final date = now.copyWith(hour: time.hour, minute: time.minute);
    _state.inputController.text = DateFormat.Hm().format(date);
    _state.onChanged(date);
  }

  /// [_state] getter.
  MyoroTimePickerInputState get state {
    return _state;
  }
}
