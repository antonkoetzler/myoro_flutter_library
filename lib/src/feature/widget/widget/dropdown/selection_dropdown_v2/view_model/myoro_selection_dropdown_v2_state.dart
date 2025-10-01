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

  /// Dispose function.
  void dispose() {
    dropdownController.dispose();
    _inputController.dispose();
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }
}
