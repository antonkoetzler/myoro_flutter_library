part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends _SelectionDropdown<T> {
  /// Default value for [allowDeselection].
  static const allowDeselectionDefaultValue = true;

  /// Default constructor.
  const MyoroSingleSelectionDropdown({
    super.key,
    super.style,
    super.label,
    super.enabled,
    super.showSearchBar,
    super.dropdownType,
    super.items,
    super.showingController,
    required super.itemBuilder,
    required super.selectedItemBuilder,
    this.selectedItem,
    this.allowDeselection = allowDeselectionDefaultValue,
    this.selectedItemController,
    this.onChanged,
  }) : assert(
         !(selectedItem != null && selectedItemController != null),
         '[MyoroSingleSelectionDropdown<$T>]: [selectedItem] and [selectedItemController] cannot be provided together.',
       );

  /// Initially selected item.
  final T? selectedItem;

  /// If the selected item can be deselected.
  final bool allowDeselection;

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?>? selectedItemController;

  /// Callback executed when the selected item is changed.
  final ValueChanged<T?>? onChanged;

  /// Create state function.
  @override
  State<MyoroSingleSelectionDropdown<T>> createState() {
    return _MyoroSingleSelectionDropdownState<T>();
  }
}
