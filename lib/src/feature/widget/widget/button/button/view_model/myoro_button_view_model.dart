import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_state.dart';

/// View model of [MyoroButton].
class MyoroButtonViewModel {
  /// State.
  final _state = MyoroButtonState();

  /// [_state] getter.
  MyoroButtonState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Callback executed when the [MyoroButton] is hovered over.
  void onEnter(_) {
    _state.tapStatusController.value = MyoroTapStatusEnum.hover;
  }

  /// Callback executed when the [MyoroButton] is hovered then exited.
  void onExit(_) {
    _state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  /// Callback executed when the [MyoroButton] is tapped.
  void onTapDown(TapDownDetails details) {
    _state.tapStatusController.value = MyoroTapStatusEnum.tap;
    _state.configuration?.onTapDown?.call(details);
  }

  /// Callback executed when the [MyoroButton] is tapped then released.
  void onTapUp(TapUpDetails details) {
    _state.tapStatusController.value = MyoroTapStatusEnum.idle;
    _state.configuration?.onTapUp?.call(details);
  }

  /// Callback executed when a [MyoroButton] is tapped then cancelled.
  void onTapCancel() {
    _state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  MouseCursor get cursor {
    return _state.configuration?.cursor ??
        (_state.configuration?.onTapProvided == true ? SystemMouseCursors.click : SystemMouseCursors.basic);
  }
}
