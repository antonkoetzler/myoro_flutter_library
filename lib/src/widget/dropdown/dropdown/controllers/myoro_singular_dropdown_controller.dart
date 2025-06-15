import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementaiton of [MyoroDropdownController].
class MyoroSingularDropdownController<T> extends MyoroDropdownController<T> {
  MyoroSingularDropdownController({super.enabled, T? initiallySelectedItem})
    : super(initiallySelectedItems: initiallySelectedItem != null ? {initiallySelectedItem} : null);

  @override
  void toggleItem(T item) {
    final selectedItems = state.selectedItems;
    state.selectedItemsController.value = selectedItems.contains(item) ? {} : {item};
  }

  /// Currently selected item.
  T? get selectedItem => state.selectedItems.isEmpty ? null : state.selectedItems.first;
}
