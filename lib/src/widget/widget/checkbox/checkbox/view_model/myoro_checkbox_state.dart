part of 'myoro_checkbox_view_model.dart';

/// State of [MyoroCheckboxViewModel].
class MyoroCheckboxState {
  /// Configuration.
  MyoroCheckboxConfiguration? _configuration;

  /// [_configuration] getter.
  MyoroCheckboxConfiguration get configuration {
    assert(_configuration != null, '[MyoroCheckboxConfiguration.configuration]: [_configuration] has no been set yet.');
    return _configuration!;
  }

  /// [_configuration] setter.
  set configuration(MyoroCheckboxConfiguration configuration) {
    _configuration = configuration;
    _enabledController ??= ValueNotifier(this.configuration.value);
    enabledController.value = configuration.value;
  }

  /// [ValueNotifier] controlling if the checkbox is enabled.
  ValueNotifier<bool>? _enabledController;

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController {
    assert(
      _enabledController != null,
      '[MyoroCheckboxState.enabledController]: [_enabledController] has not been set yet.',
    );
    return _enabledController!;
  }

  /// [_enabledController]'s value getter.
  bool get enabled {
    return enabledController.value;
  }

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
  }
}
