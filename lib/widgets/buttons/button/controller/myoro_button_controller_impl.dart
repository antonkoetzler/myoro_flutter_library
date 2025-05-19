part of '../myoro_button.dart';

/// Controller implementation of [MyoroButton].
///
/// TODO: Needs to be tested.
final class MyoroButtonControllerImpl extends MyoroButtonController {
  MyoroButtonConfiguration? get configuration => _configuration;

  ValueNotifier<MyoroTapStatusEnum> get tapStatusNotifier => _tapStatusNotifier;
  MyoroTapStatusEnum get tapStatus => _tapStatusNotifier.value;

  MouseCursor get cursor {
    return _configuration?.cursor ??
        (_configuration?.onTapProvided == true ? SystemMouseCursors.click : SystemMouseCursors.basic);
  }

  @override
  void onEnter(_) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.hover;
  }

  @override
  void onExit(_) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.idle;
  }

  @override
  void onTapDown(TapDownDetails details) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.tap;
    _configuration?.onTapDown?.call(details);
  }

  @override
  void onTapUp(TapUpDetails details) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.idle;
    _configuration?.onTapUp?.call(details);
  }

  @override
  void onTapCancel() {
    _tapStatusNotifier.value = MyoroTapStatusEnum.idle;
  }
}
