part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdown<T> extends _SelectionDropdown<T> {
  /// Default constructor.
  const MyoroMultiSelectionDropdown({
    super.key,
    super.style,
    super.dropdownType,
    super.items,
    super.showingController,
    required super.itemBuilder,
    required super.selectedItemBuilder,
    this.initiallySelectedItems,
    this.selectedItemsController,
    this.onChanged,
  }) : assert(
         !(initiallySelectedItems != null && selectedItemsController != null),
         '[MyoroMultiSelectionDropdown<$T>]: [initiallySelectedItems] and [selectedItemsController] cannot be provided together.',
       );

  /// Initially selected item.
  final Set<T>? initiallySelectedItems;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<Set<T>>? selectedItemsController;

  /// Callback executed when the selected items are changed.
  final ValueChanged<Set<T>>? onChanged;

  @override
  Widget build(_) {
    return _Base(
      style,
      MyoroMultiSelectionDropdownState(
        dropdownType,
        items,
        showingController,
        itemBuilder,
        selectedItemBuilder,
        initiallySelectedItems,
        selectedItemsController,
        onChanged,
      ),
    );
  }
}
