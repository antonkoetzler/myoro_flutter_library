part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends _SelectionDropdown<T> {
  /// Default constructor.
  const MyoroSingleSelectionDropdown({
    super.key,
    super.style,
    super.dropdownType,
    super.items,
    super.showingController,
    required super.itemBuilder,
    required super.selectedItemBuilder,
    this.initiallySelectedItem,
    this.selectedItemController,
    this.onChanged,
  }) : assert(
         !(initiallySelectedItem != null && selectedItemController != null),
         '[MyoroSingleSelectionDropdown<$T>]: [initiallySelectedItem] and [selectedItemController] cannot be provided together.',
       );

  /// Initially selected item.
  final T? initiallySelectedItem;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?>? selectedItemController;

  /// Callback executed when the selected item is changed.
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(_) {
    return _Base(
      style,
      MyoroSingleSelectionDropdownState(
        dropdownType,
        items,
        showingController,
        initiallySelectedItem,
        selectedItemController,
        itemBuilder,
        selectedItemBuilder,
        onChanged,
      ),
    );
  }
}
