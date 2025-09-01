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
  final _tapStatusNotifier = ValueNotifier(MyoroTapStatusEnum.idle);

  /// [_tapStatusNotifier] getter.
  ValueNotifier<MyoroTapStatusEnum> get tapStatusNotifier => _tapStatusNotifier;

  /// [_tapStatusNotifier]'s [MyoroTapStatusEnum] getter.
  MyoroTapStatusEnum get tapStatus => _tapStatusNotifier.value;

  /// Dispose function.
  void dispose() {
    _tapStatusNotifier.dispose();
  }
}
