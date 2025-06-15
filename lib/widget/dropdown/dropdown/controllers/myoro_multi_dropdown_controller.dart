import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementation of [MyoroDropdownController].
class MyoroMultiDropdownController<T> extends MyoroDropdownController<T> {
  MyoroMultiDropdownController({super.enabled, super.initiallySelectedItems});

  @override
  void toggleItem(T item) {
    final selectedItems = state.selectedItems;
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    state.selectedItemsController.value = selectedItems;
  }

  /// Selected items.
  Set<T> get selectedItems => state.selectedItems;
}
