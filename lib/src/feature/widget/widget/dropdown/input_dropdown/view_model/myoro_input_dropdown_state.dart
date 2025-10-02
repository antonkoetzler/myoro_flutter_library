part of 'myoro_input_dropdown_view_model.dart';

/// State of [MyoroInputDropdownViewModel].
final class MyoroInputDropdownState<
  T,
  CONFIGURATION extends MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  CONTROLLER extends MyoroDropdownController<
    T,
    MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroDropdownViewModel<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
    >
  >
> {
  MyoroInputDropdownState(this.configuration, this.dropdownController);

  /// Dispose function.
  void dispose() {
    dropdownController.dispose();
    _inputController.dispose();
  }

  /// Configuration.
  final CONFIGURATION configuration;

  /// Dropdown controller.
  final CONTROLLER dropdownController;

  /// Input controller.
  final _inputController = TextEditingController();

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }
}
