part of 'myoro_button_view_model.dart';

/// State of [MyoroButtonController].
class MyoroButtonState {
  /// Creates a new instance of [MyoroButtonState].
  MyoroButtonState(this.tooltipConfiguration, this.onTapDown, this.onTapUp, bool isLoading)
    : _isLoadingController = ValueNotifier(isLoading);

  /// [MyoroTooltipConfiguration] of the [MyoroButton].
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// [MyoroButton.onTapDown]
  final MyoroButtonOnTapDown? onTapDown;

  /// [MyoroButton.onTapUp]
  final MyoroButtonOnTapUp? onTapUp;

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final _tapStatusController = ValueNotifier(MyoroTapStatusEnum.idle);

  /// [ValueNotifier] managing the [bool] of the [MyoroButton].
  final ValueNotifier<bool> _isLoadingController;

  /// If a tap function is provided.
  bool get onTapProvided => onTapDown != null || onTapUp != null;

  /// [_tapStatusController] getter.
  ValueNotifier<MyoroTapStatusEnum> get tapStatusController => _tapStatusController;

  /// [_isLoadingController] getter.
  ValueNotifier<bool> get isLoadingController => _isLoadingController;

  /// [_tapStatusController]'s [MyoroTapStatusEnum] getter.
  MyoroTapStatusEnum get tapStatus => _tapStatusController.value;

  /// [_isLoadingController]'s [bool] getter.
  bool get isLoading => _isLoadingController.value;

  /// [_isLoadingController]'s [bool] setter.
  set isLoading(bool value) {
    _isLoadingController.value = value;
  }

  /// [_tapStatusController]'s [MyoroTapStatusEnum] setter.
  set tapStatus(MyoroTapStatusEnum value) {
    _tapStatusController.value = value;
  }

  /// Dispose function.
  void dispose() {
    _tapStatusController.dispose();
    _isLoadingController.dispose();
  }
}
