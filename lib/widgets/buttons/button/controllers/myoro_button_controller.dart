import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroButton].
class MyoroButtonController implements MyoroButtonInterface {
  late final MyoroButtonState state;

  MyoroButtonController({MyoroButtonConfiguration? configuration}) {
    state = MyoroButtonState(configuration);
  }

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void onEnter(_) {
    state.tapStatusController.value = MyoroTapStatusEnum.hover;
  }

  @override
  void onExit(_) {
    state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  @override
  void onTapDown(TapDownDetails details) {
    state.tapStatusController.value = MyoroTapStatusEnum.tap;
    state.configuration?.onTapDown?.call(details);
  }

  @override
  void onTapUp(TapUpDetails details) {
    state.tapStatusController.value = MyoroTapStatusEnum.idle;
    state.configuration?.onTapUp?.call(details);
  }

  @override
  void onTapCancel() {
    state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  MouseCursor get cursor {
    return state.configuration?.cursor ??
        (state.configuration?.onTapProvided == true ? SystemMouseCursors.click : SystemMouseCursors.basic);
  }
}
