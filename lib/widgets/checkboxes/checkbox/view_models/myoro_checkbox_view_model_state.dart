import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxViewModelState {
  MyoroCheckboxViewModelState(this._configuration) : enabledController = ValueNotifier(_configuration.value);

  /// Configuration.
  MyoroCheckboxConfiguration _configuration;
  MyoroCheckboxConfiguration get configuration => _configuration;
  set configuration(MyoroCheckboxConfiguration configuration) {
    _configuration = configuration;
    enabledController.value = _configuration.value;
  }

  /// [ValueNotifier] controlling if the checkbox is enabled.
  final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
  }
}
