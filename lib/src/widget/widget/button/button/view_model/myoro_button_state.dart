import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroButtonController].
class MyoroButtonState {
  MyoroButtonState(this._configuration);

  /// Configuration.
  MyoroButtonConfiguration? _configuration;
  MyoroButtonConfiguration? get configuration => _configuration;
  set configuration(MyoroButtonConfiguration? configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
  }

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final _tapStatusController = ValueNotifier(MyoroTapStatusEnum.idle);
  ValueNotifier<MyoroTapStatusEnum> get tapStatusController => _tapStatusController;
  MyoroTapStatusEnum get tapStatus => _tapStatusController.value;

  /// Dispose function.
  void dispose() {
    _tapStatusController.dispose();
  }
}
