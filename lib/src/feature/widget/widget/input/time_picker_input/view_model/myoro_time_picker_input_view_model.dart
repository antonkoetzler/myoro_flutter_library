import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_time_picker_input_state.dart';

/// View model of [MyoroTimePickerInput].
class MyoroTimePickerInputViewModel {
  /// Default constructor.
  MyoroTimePickerInputViewModel(
    String label,
    MyoroTimePickerInputValidation? validation,
    MyoroTimePickerInputOnChanged onChanged,
  ) : _state = MyoroTimePickerInputState(label, validation, onChanged) {
    _state.timeController.addListener(_timeControllerListener);
  }

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
    _state.time = time;
  }

  /// Listener of [MyoroTimePickerInputState.timeController].
  void _timeControllerListener() {
    final time = _state.time;
    if (time == null) {
      _state
        ..inputController.text = kMyoroEmptyString
        ..onChanged(time);
    } else {
      _state
        ..inputController.text = '${time.hour}:${time.minute}'
        ..onChanged(time);
    }
  }

  /// [_state] getter.
  MyoroTimePickerInputState get state {
    return _state;
  }
}
