import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroButtonController].
class MyoroButtonViewModelState {
  /// Configuration.
  MyoroButtonConfiguration? _configuration;
  MyoroButtonConfiguration? get configuration => _configuration;
  set configuration(MyoroButtonConfiguration? configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
  }

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final tapStatusController = ValueNotifier(MyoroTapStatusEnum.idle);

  /// Dispose function.
  void dispose() {
    tapStatusController.dispose();
  }
}
