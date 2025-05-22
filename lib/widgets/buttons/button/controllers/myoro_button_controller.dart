import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroButton].
class MyoroButtonController {
  MyoroButtonController(this.configuration);

  /// Configuration.
  MyoroButtonConfiguration? configuration;

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final _tapStatusController = ValueNotifier(MyoroTapStatusEnum.idle);
  ValueNotifier<MyoroTapStatusEnum> get tapStatusController => _tapStatusController;

  /// Dispose function.
  void dispose() {
    _tapStatusController.dispose();
  }

  /// Callback executed when the [MyoroButton] is hovered over.
  void onEnter(_) {
    _tapStatusController.value = MyoroTapStatusEnum.hover;
  }

  /// Callback executed when the [MyoroButton] is hovered then exited.
  void onExit(_) {
    _tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  /// Callback executed when the [MyoroButton] is tapped.
  void onTapDown(TapDownDetails details) {
    _tapStatusController.value = MyoroTapStatusEnum.tap;
    configuration?.onTapDown?.call(details);
  }

  /// Callback executed when the [MyoroButton] is tapped then released.
  void onTapUp(TapUpDetails details) {
    _tapStatusController.value = MyoroTapStatusEnum.idle;
    configuration?.onTapUp?.call(details);
  }

  /// Callback executed when a [MyoroButton] is tapped then cancelled.
  void onTapCancel() {
    _tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  MouseCursor get cursor {
    return configuration?.cursor ??
        (configuration?.onTapProvided == true ? SystemMouseCursors.click : SystemMouseCursors.basic);
  }
}
