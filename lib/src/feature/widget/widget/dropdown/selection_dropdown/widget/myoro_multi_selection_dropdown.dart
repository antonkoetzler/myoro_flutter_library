part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdown<T> extends _SelectionDropdown<T> {
  /// Default constructor.
  const MyoroMultiSelectionDropdown({
    super.key,
    super.style,
    super.label,
    super.dropdownType,
    super.items,
    super.showingController,
    required super.itemBuilder,
    required super.selectedItemBuilder,
    this.selectedItems,
    this.selectedItemsController,
    this.onChanged,
  }) : assert(
         !(selectedItems != null && selectedItemsController != null),
         '[MyoroMultiSelectionDropdown<$T>]: [selectedItems] and [selectedItemsController] cannot be provided together.',
       );

  /// Initially selected item.
  final Set<T>? selectedItems;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<Set<T>>? selectedItemsController;

  /// Callback executed when the selected items are changed.
  final ValueChanged<Set<T>>? onChanged;

  @override
  Widget build(_) {
    return _Base(
      style,
      MyoroMultiSelectionDropdownState(
        label,
        enabled,
        dropdownType,
        items,
        showingController,
        itemBuilder,
        selectedItemBuilder,
        selectedItems,
        selectedItemsController,
        onChanged,
      ),
    );
  }
}
