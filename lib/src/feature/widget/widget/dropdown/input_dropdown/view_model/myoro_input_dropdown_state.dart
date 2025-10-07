part of 'myoro_input_dropdown_view_model.dart';

/// State of [MyoroInputDropdownViewModel].
final class MyoroInputDropdownState<
  T,
  CONFIGURATION extends MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  CONTROLLER extends MyoroDropdownController<
    T,
    MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>,
    MyoroDropdownViewModel<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
    >
  >
> {
  /// Creates a new instance of [MyoroInputDropdownState].
  MyoroInputDropdownState(this._configuration, TextEditingController? inputController, this.dropdownController)
    : _enabledController = ValueNotifier(_configuration.enabled) {
    _inputController = inputController ?? (_localInputController ??= TextEditingController());
  }

  /// Configuration.
  CONFIGURATION _configuration;

  /// Dropdown controller.
  final CONTROLLER dropdownController;

  /// Local input controller.
  TextEditingController? _localInputController;

  /// Input controller.
  late final TextEditingController _inputController;

  /// [ValueNotifier] controlling if the dropdown is enabled or not.
  final ValueNotifier<bool> _enabledController;

  /// [_configuration] getter.
  CONFIGURATION get configuration {
    return _configuration;
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController {
    return _enabledController;
  }

  /// [_enabledController]'s value getter.
  bool get enabled {
    return _enabledController.value;
  }

  /// [_configuration] setter.
  set configuration(CONFIGURATION configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    dropdownController.configuration = dropdownController.configuration.copyWith(
      menuConfiguration: _configuration.menuConfiguration,
      dropdownType: _configuration.dropdownType,
    );
  }

  /// [_enabledController] setter.
  set enabled(bool enabled) {
    _enabledController.value = enabled;
  }

  /// Dispose function.
  void dispose() {
    dropdownController.dispose();
    _localInputController?.dispose();
  }
}
