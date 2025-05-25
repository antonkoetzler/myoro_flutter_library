import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxViewModelState {
  /// Configuration.
  late MyoroCheckboxConfiguration configuration;

  /// [ValueNotifier] controlling if the checkbox is enabled.
  late final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
  }
}
