part of 'myoro_checkbox_view_model.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxState {
  MyoroCheckboxState(this._configuration) : _enabledNotifier = ValueNotifier(_configuration.value);

  /// Configuration.
  MyoroCheckboxConfiguration _configuration;

  /// [_configuration] getter.
  MyoroCheckboxConfiguration get configuration {
    return _configuration;
  }

  /// [_configuration] setter.
  set configuration(MyoroCheckboxConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    enabledNotifier.value = configuration.value;
  }

  /// [ValueNotifier] controlling if the checkbox is enabled.
  final ValueNotifier<bool> _enabledNotifier;

  /// [_enabledNotifier] getter.
  ValueNotifier<bool> get enabledNotifier {
    return _enabledNotifier;
  }

  /// [_enabledNotifier]'s value getter.
  bool get enabled {
    return enabledNotifier.value;
  }

  /// [_enabledNotifier]'s setter.
  set enabled(bool enabled) {
    _enabledNotifier.value = enabled;
  }

  /// Dispose function.
  void dispose() {
    enabledNotifier.dispose();
  }
}
