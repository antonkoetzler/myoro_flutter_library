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
        state.selectedItemsController.addListener(_listener);
        break;
      case final MyoroSingleSelectionDropdownState<T> state:
        state.selectedItemController.addListener(_listener);
        break;
    }
  }

  /// State.
  final MyoroSelectionDropdownState<T> state;

  /// Dispose function.
  void dispose() {
    switch (state) {
      case final MyoroMultiSelectionDropdownState<T> state:
        state.selectedItemsController.removeListener(_listener);
        break;
      case final MyoroSingleSelectionDropdownState<T> state:
        state.selectedItemController.removeListener(_listener);
        break;
    }

    state.dispose();
  }

  /// On tap function.
  void onTap() {
    state.showing = !state.showing;
  }

  /// Listener for [MyoroMultiSelectionDropdownState.selectedItemsController].
  void _listener() {
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
