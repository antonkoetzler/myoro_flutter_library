part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends _SelectionDropdown<T> {
  /// Default constructor.
  const MyoroSingleSelectionDropdown({
    super.key,
    super.style,
    super.label,
    super.enabled,
    super.dropdownType,
    super.items,
    super.showingController,
    required super.itemBuilder,
    required super.selectedItemBuilder,
    this.selectedItem,
    this.selectedItemController,
    this.onChanged,
  }) : assert(
         !(selectedItem != null && selectedItemController != null),
         '[MyoroSingleSelectionDropdown<$T>]: [selectedItem] and [selectedItemController] cannot be provided together.',
       );

  /// Initially selected item.
  final T? selectedItem;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?>? selectedItemController;

  /// Callback executed when the selected item is changed.
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(_) {
    return _Base(
      style,
      MyoroSingleSelectionDropdownState(
        label,
        enabled,
        dropdownType,
        items,
        showingController,
        selectedItem,
        selectedItemController,
        itemBuilder,
        selectedItemBuilder,
        onChanged,
      ),
    );
  }
}
