import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_state.dart';
part 'myoro_multi_accordion_state.dart';
part 'myoro_single_accordion_state.dart';

/// Base accordion view model.
class MyoroAccordionViewModel<T> {
  /// Default constructor.
  MyoroAccordionViewModel(this.state);

  /// State
  final MyoroAccordionState<T> state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Resets all selected items.
  void reset() {
    switch (state) {
      case final MyoroMultiAccordionState<T> state:
        state.selectedItems = const {};
        break;
      case final MyoroSingleAccordionState<T> state:
        state.selectedItem = null;
        break;
    }
  }

  /// Toggles an item.
  void toggleItem(T item) {
    switch (state) {
      case final MyoroMultiAccordionState<T> state:
        final selectedItems = Set<T>.from(state.selectedItems);
        state.selectedItems = selectedItems.contains(item) ? (selectedItems..remove(item)) : (selectedItems..add(item));
        break;
      case final MyoroSingleAccordionState<T> state:
        state.selectedItem = state.selectedItem == item ? null : item;
        break;
    }
  }
}
