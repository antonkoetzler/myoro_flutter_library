import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroDatePickerInput].
class MyoroDatePickerInputController {
  MyoroDatePickerInputController({required MyoroInputConfiguration configuration}) {
    state = MyoroDatePickerInputState(configuration);
  }

  late final MyoroDatePickerInputState state;
  MyoroInputConfiguration get configuration => state.configuration;
  TextEditingController get inputController => state.inputController;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }
}
