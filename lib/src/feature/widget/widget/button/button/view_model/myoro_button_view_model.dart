import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_state.dart';

/// View model of [MyoroButton].
class MyoroButtonViewModel {
  /// Creates a new instance of [MyoroButtonViewModel].
  MyoroButtonViewModel(String tooltipText, MyoroButtonOnTapDown? onTapDown, MyoroButtonOnTapUp? onTapUp, bool isLoading)
    : _state = MyoroButtonState(tooltipText, onTapDown, onTapUp, isLoading);

  /// State.
  final MyoroButtonState _state;

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
  void onTapDown(BuildContext context, TapDownDetails details) {
    _state.tapStatusController.value = MyoroTapStatusEnum.tap;
    _state.onTapDown?.call(context, details);
  }

  /// Callback executed when the [MyoroButton] is tapped then released.
  void onTapUp(BuildContext context, TapUpDetails details) {
    _state.tapStatusController.value = MyoroPlatformHelper.isDesktop
        ? MyoroTapStatusEnum.hover
        : MyoroTapStatusEnum.idle;
    _state.onTapUp?.call(context, details);
  }

  /// Callback executed when a [MyoroButton] is tapped then cancelled.
  void onTapCancel() {
    _state.tapStatusController.value = MyoroTapStatusEnum.idle;
  }

  /// [_state] getter.
  MyoroButtonState get state {
    return _state;
  }
}
