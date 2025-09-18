import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_state.dart';

/// Base accordion view model.
class MyoroAccordionViewModel<T> {
  MyoroAccordionViewModel(MyoroAccordionConfiguration<T> configuration, Set<T> selectedItems)
    : _state = MyoroAccordionState(configuration, selectedItems);

  /// State
  final MyoroAccordionState<T> _state;

  /// [_state] getter.
  MyoroAccordionState<T> get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Toggles an item.
  void toggleItem(T item) {
    final selectedItems = Set<T>.from(_state.selectedItems);
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    _state.selectedItems = selectedItems;
  }

  /// Resets all selected items.
  void reset() {
    _state.selectedItems = const {};
  }
}
