import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Single selection implementation of [MyoroSingleSelectionDropdown].
class MyoroSingleSelectionDropdownViewModel<T>
    extends MyoroSelectionDropdownViewModel<T, MyoroSingleSelectionDropdownState<T>> {
  /// Default constructor.
  MyoroSingleSelectionDropdownViewModel(
    String label,
    bool enabled,
    bool enableSearch,
    MyoroDropdownTypeEnum? dropdownType,
    Set<T>? items,
    ValueNotifier<bool>? showingController,
    MyoroMenuItemBuilder<T> itemBuilder,
    MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder,
    T? selectedItem,
    ValueNotifier<T?>? selectedItemController,
    bool allowDeselection,
    ValueChanged<T?>? onChanged,
  ) : super(
        MyoroSingleSelectionDropdownState(
          label,
          enabled,
          enableSearch,
          dropdownType,
          items,
          showingController,
          itemBuilder,
          selectedItemBuilder,
          selectedItem,
          selectedItemController,
          allowDeselection,
          onChanged,
        ),
      ) {
    state.selectedItemController.addListener(formatItems);
  }

  /// Listener for [MyoroSingleSelectionDropdownState.selectedItemsController].
  @override
  void formatItems() {
    final selectedItem = state.selectedItem;
    final onChanged = state.onChanged;
    final selectedItemBuilder = state.selectedItemBuilder;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state.input = selectedItem != null ? selectedItemBuilder(selectedItem) : kMyoroEmptyString;
    });
    onChanged?.call(selectedItem);
  }

  /// Item builder.
  @override
  MyoroMenuItem itemBuilder(int index, T item) {
    final menuItem = state.itemBuilder(index, item);
    return menuItem.copyWith(
      onTapUp: (context, details) {
        menuItem.onTapUp?.call(context, details);

        final selectedItem = state.selectedItem;
        if (item == selectedItem) {
          // Only allow deselection if allowDeselection is true
          if (state.allowDeselection) {
            state.selectedItem = null;
          }
        } else {
          state.selectedItem = item;
        }
        if (state.selectedItem != null) state.showing = false;
      },
    );
  }
}
