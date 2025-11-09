import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';
part 'myoro_multi_selection_dropdown_state.dart';
part 'myoro_single_selection_dropdown_state.dart';

/// View model of a selection dropdown.
class MyoroSelectionDropdownViewModel<T> {
  /// Default constructor.
  MyoroSelectionDropdownViewModel(this.state) {
    _formatItems();
    switch (state) {
      case final MyoroMultiSelectionDropdownState<T> state:
        state.selectedItemsController.addListener(_formatItems);
        break;
      case final MyoroSingleSelectionDropdownState<T> state:
        state.selectedItemController.addListener(_formatItems);
        break;
    }
  }

  /// State.
  MyoroSelectionDropdownState<T> state;

  /// Dispose function.
  void dispose() {
    switch (state) {
      case final MyoroMultiSelectionDropdownState<T> state:
        state.selectedItemsController.removeListener(_formatItems);
        break;
      case final MyoroSingleSelectionDropdownState<T> state:
        state.selectedItemController.removeListener(_formatItems);
        break;
    }

    state.dispose();
  }

  /// On tap function.
  void onTap() {
    state.showing = !state.showing;
  }

  /// Listener for [MyoroMultiSelectionDropdownState.selectedItemsController].
  void _formatItems() {
    final inputController = state.inputController;
    final selectedItemBuilder = state.selectedItemBuilder;

    switch (state) {
      case final MyoroMultiSelectionDropdownState<T> state:
        final selectedItems = state.selectedItems;
        final onChanged = state.onChanged;
        onChanged?.call(selectedItems);
        inputController.text = selectedItems.map((v) => selectedItemBuilder(v)).join(', ');
        state.onChanged?.call(state.selectedItems);
        break;
      case final MyoroSingleSelectionDropdownState<T> state:
        final selectedItem = state.selectedItem;
        final onChanged = state.onChanged;
        inputController.text = selectedItem != null ? selectedItemBuilder(selectedItem) : kMyoroEmptyString;
        onChanged?.call(selectedItem);
        break;
    }
  }
}
