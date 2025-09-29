part of 'myoro_selection_dropdown_v2_view_model.dart';

/// State of [MyoroSelectionDropdownV2ViewModel].
class MyoroSelectionDropdownV2State<
  T,
  DROPDOWN_CONTROLLER extends MyoroDropdownController<
    T,
    MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroDropdownViewModel<T, MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>>
  >
> {
  MyoroSelectionDropdownV2State(this.dropdownController);

  /// Dropdown controller.
  final DROPDOWN_CONTROLLER dropdownController;

  /// Dispose function.
  void dispose() {
    dropdownController.dispose();
  }
}
