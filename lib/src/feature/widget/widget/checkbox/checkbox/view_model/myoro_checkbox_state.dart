part of 'myoro_checkbox_view_model.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxState {
  /// Creates a new instance of [MyoroCheckboxState].
  MyoroCheckboxState(this._configuration) : _enabledController = ValueNotifier(_configuration.value);

  /// Configuration.
  MyoroCheckboxConfiguration _configuration;

  /// [ValueNotifier] controlling if the checkbox is enabled.
  final ValueNotifier<bool> _enabledController;

  /// [_configuration] getter.
  MyoroCheckboxConfiguration get configuration {
    return _configuration;
  }

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController {
    return _enabledController;
  }

  /// [_enabledController]'s value getter.
  bool get enabled {
    return enabledController.value;
  }

  /// [_configuration] setter.
  set configuration(MyoroCheckboxConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    enabledController.value = configuration.value;
  }

  /// [_enabledController]'s setter.
  set enabled(bool enabled) {
    _enabledController.value = enabled;
  }

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
  }
}
