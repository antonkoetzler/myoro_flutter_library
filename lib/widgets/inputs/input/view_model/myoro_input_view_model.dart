part of '../myoro_input.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  late final MyoroInputViewModelState _state;
  MyoroInputConfiguration get _configuration => _state._configuration;
  TextEditingController get _controller => _state._controller;
  ValueNotifier<bool> get _enabledNotifier => _state._enabledNotifier;
  ValueNotifier<bool> get _showClearTextButtonNotifier => _state._showClearTextButtonNotifier;

  MyoroInputViewModel(MyoroInputConfiguration configuration, [MyoroInputFormatter? formatter]) {
    _state = MyoroInputViewModelState(configuration, formatter);
    _controller.addListener(_controllerListener);
  }

  /// Dispose function.
  void dispose() {
    (_configuration.controller != null) ? _controller.removeListener(_controllerListener) : _controller.dispose();
    _enabledNotifier.dispose();
    _showClearTextButtonNotifier.dispose();
  }

  /// [_controller]'s listener.
  void _controllerListener() {
    _showClearTextButtonNotifier.value = _state._showClearTextButton;
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void _checkboxOnChanged(bool value) {
    _configuration.checkboxOnChanged!.call(value, _controller.text);
    _enabledNotifier.value = value;
  }
}
