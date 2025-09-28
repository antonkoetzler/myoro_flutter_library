part of 'myoro_selection_dropdown_view_model.dart';

/// State class of [MyoroSelectionDropdownViewModel].
class MyoroSelectionDropdownState<
  T,
  CONFIGURATION extends MyoroSelectionDropdownConfiguration<T, DROPDOWN_CONFIGURATION>,
  DROPDOWN_CONFIGURATION extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>
> {
  MyoroSelectionDropdownState(this.configuration, this.dropdownController)
    : _enabledNotifier = ValueNotifier(configuration.enabled);

  /// Configuration.
  CONFIGURATION configuration;

  /// [ValueNotifier] controlling if the [_SelectionDropdown] is enabled or not.
  final ValueNotifier<bool> _enabledNotifier;

  /// [TextEditingController] of [_Input].
  final _inputController = TextEditingController();

  /// [GlobalKey] of the input to pass it's [Size] to [_inputSizeNotifier].
  final _inputKey = GlobalKey();

  /// Dropdown controller.
  final MyoroDropdownController dropdownController;

  /// Dispose function.
  void dispose() {
    _enabledNotifier.dispose();
    _inputController.dispose();
    dropdownController.dispose();
  }

  /// [_enabledNotifier] getter.
  ValueNotifier<bool> get enabledNotifier {
    return _enabledNotifier;
  }

  /// Getter of [_enabledNotifier]'s value.
  bool get enabled {
    return _enabledNotifier.value;
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_inputKey] getter.
  GlobalKey get inputKey {
    return _inputKey;
  }
}
