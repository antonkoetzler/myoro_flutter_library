import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroDatePickerInputController].
class MyoroDatePickerInputState {
  MyoroDatePickerInputState(this.configuration);

  /// Configuration.
  final MyoroInputConfiguration configuration;

  /// Controller.
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return configuration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
  }
}
