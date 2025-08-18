import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_time_picker_input_state.dart';

/// View model of [MyoroTimePickerInput].
class MyoroTimePickerInputViewModel {
  MyoroTimePickerInputViewModel(MyoroTimePickerInputConfiguration configuration)
    : _state = MyoroTimePickerInputState(configuration);

  final MyoroTimePickerInputState _state;
  MyoroTimePickerInputState get state => _state;

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

  /// Opens the time picker [Widget].
  void openTimePicker(BuildContext context, Widget Function(Widget? child) builder) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (_, child) => builder(child),
    );
    if (time == null) return;
    final now = DateTime.now();
    _state.inputController.text = DateFormat.Hm().format(now.copyWith(hour: time.hour, minute: time.minute));
  }
}
