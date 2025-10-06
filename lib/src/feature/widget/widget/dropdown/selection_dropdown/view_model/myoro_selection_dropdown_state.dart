part of 'myoro_selection_dropdown_view_model.dart';

/// State of [MyoroSelectionDropdownViewModel].
class MyoroSelectionDropdownState<
  T,
  CONFIGURATION extends MyoroSelectionDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
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
  MyoroSelectionDropdownState(this.configuration, this.dropdownController);

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
