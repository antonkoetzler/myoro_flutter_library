import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_state.dart';

/// Base accordion view model.
class MyoroAccordionViewModel {
  MyoroAccordionViewModel(MyoroAccordionConfiguration configuration, Set<MyoroAccordionItem> selectedItems)
    : _state = MyoroAccordionState(configuration, selectedItems);

  /// State
  final MyoroAccordionState _state;

  /// [_state] getter.
  MyoroAccordionState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Toggles a [MyoroAccordionItem].
  void toggleItem(MyoroAccordionItem item) {
    final selectedItems = Set<MyoroAccordionItem>.from(_state.selectedItems);
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    _state.selectedItems = selectedItems;
  }

  /// Resets all selected items.
  void reset() {
    _state.selectedItems = const {};
  }
}
