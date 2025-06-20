import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroButton].
class MyoroButtonViewModel {
  final state = MyoroButtonViewModelState();

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Callback executed when the [MyoroButton] is hovered over.
  void onEnter(_) {
    state.tapStatusController.value = MyoroTapStatusEnum.hover;
  }

  /// Callback executed when the [MyoroButton] is hovered then exited.
  void onExit(_) {
    state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  /// Callback executed when the [MyoroButton] is tapped.
  void onTapDown(TapDownDetails details) {
    state.tapStatusController.value = MyoroTapStatusEnum.tap;
    state.configuration?.onTapDown?.call(details);
  }

  /// Callback executed when the [MyoroButton] is tapped then released.
  void onTapUp(TapUpDetails details) {
    state.tapStatusController.value = MyoroTapStatusEnum.hover;
    state.configuration?.onTapUp?.call(details);
  }

  /// Callback executed when a [MyoroButton] is tapped then cancelled.
  void onTapCancel() {
    state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  MouseCursor get cursor {
    return state.configuration?.cursor ??
        (state.configuration?.onTapProvided == true ? SystemMouseCursors.click : SystemMouseCursors.basic);
  }
}
