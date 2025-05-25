import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxViewModelState {
  MyoroCheckboxViewModelState(this.configuration) : enabledController = ValueNotifier(configuration.value);

  /// Configuration.
  MyoroCheckboxConfiguration configuration;
  set(MyoroCheckboxConfiguration configuration) {
    this.configuration = configuration;
    enabledController.value = this.configuration.value;
  }

  /// [ValueNotifier] controlling if the checkbox is enabled.
  final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
  }
}
