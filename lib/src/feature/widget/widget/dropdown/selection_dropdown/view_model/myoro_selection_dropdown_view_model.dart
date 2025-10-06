import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';

/// View model of dropdown.
abstract class MyoroSelectionDropdownViewModel<
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
  MyoroSelectionDropdownViewModel(
    CONFIGURATION configuration,
    DROPDOWN_CONTROLLER dropdownController,
  ) : _state = MyoroSelectionDropdownState(configuration, dropdownController);

  /// State.
  final MyoroSelectionDropdownState<T, CONFIGURATION, DROPDOWN_CONTROLLER> _state;

  /// [_state] getter.
  MyoroSelectionDropdownState<T, CONFIGURATION, DROPDOWN_CONTROLLER> get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles the dropdown.
  void toggleDropdown() {
    state.dropdownController.toggleDropdown();
  }

  /// Enables the dropdown.
  void enableDropdown() {
    state.dropdownController.enableDropdown();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    state.dropdownController.disableDropdown();
  }

  /// Formats the items to display on the input.
  @protected
  void formatItems();

  /// Builds the dropdown [Widget].
  Widget buildDropdownWidget(Widget inputWidget);
}
