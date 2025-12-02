import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Multi selection implementation of [MyoroMultiSelectionDropdown].
class MyoroMultiSelectionDropdownViewModel<T>
    extends MyoroSelectionDropdownViewModel<T, MyoroMultiSelectionDropdownState<T>> {
  /// Default constructor.
  MyoroMultiSelectionDropdownViewModel(
    String label,
    bool enabled,
    bool showSearchBar,
    MyoroDropdownTypeEnum? dropdownType,
    Set<T>? items,
    ValueNotifier<bool>? showingController,
    MyoroMenuItemBuilder<T> itemBuilder,
    MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder,
    Set<T>? selectedItems,
    ValueNotifier<Set<T>>? selectedItemsController,
    ValueChanged<Set<T>>? onChanged,
  ) : super(
        MyoroMultiSelectionDropdownState(
          label,
          enabled,
          showSearchBar,
          dropdownType,
          items,
          showingController,
          itemBuilder,
          selectedItemBuilder,
          selectedItems,
          selectedItemsController,
          onChanged,
        ),
      ) {
    state.selectedItemsController.addListener(formatItems);
  }

  /// Listener for [MyoroMultiSelectionDropdownState.selectedItemsController].
  @override
  void formatItems() {
    final selectedItems = state.selectedItems;
    final onChanged = state.onChanged;
    onChanged?.call(selectedItems);
    state.input = selectedItems.map((v) => state.selectedItemBuilder(v)).join(', ');
    state.onChanged?.call(state.selectedItems);
  }

  /// Item builder.
  @override
  MyoroMenuItem itemBuilder(int index, T item) {
    final menuItem = itemBuilder(index, item);
    return menuItem.copyWith(
      onTapUp: (context, details) {
        menuItem.onTapUp?.call(context, details);
        final selectedItems = Set<T>.from(state.selectedItems);
        state.selectedItems = selectedItems.contains(item) ? (selectedItems..remove(item)) : (selectedItems..add(item));
      },
    );
  }
}
