part of 'myoro_button_view_model.dart';

/// State of [MyoroButtonController].
class MyoroButtonState {
  MyoroButtonState(this.configuration);

  /// Configuration.
  MyoroButtonConfiguration? configuration;

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
