import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_filter_button_state.dart';
part 'myoro_checkbox_filter_button_state.dart';
part 'myoro_radio_filter_button_state.dart';

/// View model of a filter button.
class MyoroFilterButtonViewModel<T> {
  /// Default constructor.
  MyoroFilterButtonViewModel(this.state);

  /// State.
  MyoroFilterButtonState<T> state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Function to call when the button is tapped.
  void toggleSelection(_, _) {
    state.showing = !state.showing;
  }

  /// On item tapped.
  void onItemTapped(T item) {
    switch (state) {
      case final MyoroCheckboxFilterButtonState<T> state:
        final temporarilySelectedItems = Set<T>.from(state.temporarilySelectedItems);
        state.temporarilySelectedItems = temporarilySelectedItems.contains(item)
            ? (temporarilySelectedItems..remove(item))
            : (temporarilySelectedItems..add(item));
        break;
      case final MyoroRadioFilterButtonState<T> state:
        state.temporarilySelectedItem = item;
        break;
    }
  }

  /// On cancel.
  void onCancel(BuildContext context, _) {
    switch (state) {
      case final MyoroCheckboxFilterButtonState<T> state:
        state.temporarilySelectedItems = state.selectedItems;
        break;
      case final MyoroRadioFilterButtonState<T> state:
        state.temporarilySelectedItem = state.selectedItem;
        break;
    }
    context.navigator.pop();
  }

  /// On clear.
  void onClear(BuildContext context, _) {
    switch (state) {
      case final MyoroCheckboxFilterButtonState<T> state:
        state
          ..selectedItems = const {}
          ..temporarilySelectedItems = const {};
        break;
      case final MyoroRadioFilterButtonState<T> state:
        state
          ..selectedItem = null
          ..temporarilySelectedItem = null;
        break;
    }
    context.navigator.pop();
  }

  /// On apply.
  void onApply(BuildContext context, _) {
    switch (state) {
      case final MyoroCheckboxFilterButtonState<T> state:
        state.selectedItems = state.temporarilySelectedItems;
        break;
      case final MyoroRadioFilterButtonState<T> state:
        state.selectedItem = state.temporarilySelectedItem;
        break;
    }
    context.navigator.pop();
  }

  /// Check if the item is selected.
  bool isItemSelected(T item) {
    switch (state) {
      case final MyoroCheckboxFilterButtonState<T> state:
        return state.temporarilySelectedItems.contains(item);
      case final MyoroRadioFilterButtonState<T> state:
        return state.temporarilySelectedItem == item;
    }
  }
}
