part of 'myoro_selection_dropdown_v2_view_model.dart';

/// State of [MyoroSelectionDropdownV2ViewModel].
class MyoroSelectionDropdownV2State<
  T,
  CONFIGURATION extends MyoroSelectionDropdownV2Configuration<T, MyoroMenuConfiguration<T>>,
  DROPDOWN_CONTROLLER extends MyoroDropdownController<
    T,
    MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroDropdownViewModel<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
    >
  >
> {
  MyoroSelectionDropdownV2State(this.configuration, this.dropdownController);

  /// Configuration.
  final CONFIGURATION configuration;

  /// Dropdown controller.
  final DROPDOWN_CONTROLLER dropdownController;

  /// Input controller.
  final _inputController = TextEditingController();

  /// [ValueNotifier] of the [_inputKey]'s size.
  final _inputAndInputClearTextButtonSizeController =
      ValueNotifier<MyoroSelectionDropdownV2InputAndInputClearTextButtonSize?>(null);

  /// [GlobalKey] of the input's clear text button.
  final _inputClearTextButtonKey = GlobalKey();

  /// Dispose function.
  void dispose() {
    dropdownController.dispose();
    _inputController.dispose();
    _inputAndInputClearTextButtonSizeController.dispose();
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_inputAndInputClearTextButtonSizeController] getter.
  ValueNotifier<MyoroSelectionDropdownV2InputAndInputClearTextButtonSize?>
  get inputAndInputClearTextButtonSizeController {
    return _inputAndInputClearTextButtonSizeController;
  }

  /// [_inputClearTextButtonKey] getter.
  GlobalKey get inputClearTextButtonKey {
    return _inputClearTextButtonKey;
  }

  /// [_inputAndInputClearTextButtonSizeController] setter.
  set inputAndInputClearTextButtonSize(
    MyoroSelectionDropdownV2InputAndInputClearTextButtonSize? inputAndInputClearTextButtonSize,
  ) {
    _inputAndInputClearTextButtonSizeController.value = inputAndInputClearTextButtonSize;
  }
}
