part of 'myoro_button_view_model.dart';

/// State of [MyoroButtonController].
class MyoroButtonState {
  /// Configuration.
  MyoroButtonConfiguration? _configuration;

  /// [_configuration] getter.
  MyoroButtonConfiguration? get configuration => _configuration;

  /// [_configuration] setter.
  set configuration(MyoroButtonConfiguration? configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
  }

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final _tapStatusController = ValueNotifier(MyoroTapStatusEnum.idle);

  /// [_tapStatusController] getter.
  ValueNotifier<MyoroTapStatusEnum> get tapStatusController => _tapStatusController;

  /// [_tapStatusController]'s [MyoroTapStatusEnum] getter.
  MyoroTapStatusEnum get tapStatus => _tapStatusController.value;

  /// Dispose function.
  void dispose() {
    _tapStatusController.dispose();
  }
}
