import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroButtonController].
class MyoroButtonState {
  MyoroButtonState(this.configuration);

  /// Configuration.
  MyoroButtonConfiguration? configuration;

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final tapStatusController = ValueNotifier(MyoroTapStatusEnum.idle);

  /// Dispose function.
  void dispose() {
    tapStatusController.dispose();
  }
}
