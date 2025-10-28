import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';
part 'myoro_multi_selection_dropdown_state.dart';
part 'myoro_single_selection_dropdown_state.dart';

/// View model of a selection dropdown.
class MyoroSelectionDropdownViewModel<T> {
  /// Default constructor.
  MyoroSelectionDropdownViewModel(this.state) {
    switch (state) {
      case final MyoroMultiSelectionDropdownState<T> state:
        state.selectedItemsController.addListener(() => _selectedItemsControllerListener(state));
        break;
      case final MyoroSingleSelectionDropdownState<T> state:
        state.selectedItemController.addListener(() => _selectedItemControllerListener(state));
        break;
    }
  }

  /// State.
  final MyoroSelectionDropdownState<T> state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Listener for [MyoroMultiSelectionDropdownState.selectedItemsController].
  void _selectedItemsControllerListener(MyoroMultiSelectionDropdownState<T> state) {
    final selectedItems = state.selectedItems;
    final selectedItemBuilder = state.selectedItemBuilder;
    state.inputController.text = selectedItems.map((v) => selectedItemBuilder(v)).join(', ');
  }

  /// Listener for [MyoroSingleSelectionDropdownState.selectedItemController].
  void _selectedItemControllerListener(MyoroSingleSelectionDropdownState<T> state) {
    final selectedItem = state.selectedItem;
    final selectedItemBuilder = state.selectedItemBuilder;
    state.inputController.text = selectedItem != null ? selectedItemBuilder(selectedItem) : kMyoroEmptyString;
  }
}
