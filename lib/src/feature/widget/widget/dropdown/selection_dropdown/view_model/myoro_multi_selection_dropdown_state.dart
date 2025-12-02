part of 'myoro_selection_dropdown_state.dart';

/// [State] of [MyoroMultiSelectionDropdownViewModel].
class MyoroMultiSelectionDropdownState<T> extends MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroMultiSelectionDropdownState(
    super.label,
    super.enabled,
    super.showSearchBar,
    super.dropdownType,
    super.items,
    super.itemBuilder,
    super.selectedItemBuilder,
    super.showingController,
    Set<T>? initiallySelectedItems,
    ValueNotifier<Set<T>>? selectedItemsController,
    this.onChanged,
  ) {
    _selectedItemsController =
        (selectedItemsController ??
        (_localSelectedItemsController ??= ValueNotifier(initiallySelectedItems ?? const {})));
  }

  /// Local selected items [ValueNotifier].
  ValueNotifier<Set<T>>? _localSelectedItemsController;

  /// [ValueNotifier] controlling the selected item(s).
  late ValueNotifier<Set<T>> _selectedItemsController;

  /// Callback executed when the selected items are changed.
  ValueChanged<Set<T>>? onChanged;

  /// Dispose function.
  @override
  void dispose() {
    _localSelectedItemsController?.dispose();
    super.dispose();
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// Getter of [_selectedItemsController]'s value.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }

  /// Setter of the selected items controller.
  set selectedItemsController(ValueNotifier<Set<T>>? selectedItemsController) {
    if (selectedItemsController == null) {
      _selectedItemsController = _localSelectedItemsController ??= ValueNotifier(selectedItems);
    } else {
      _localSelectedItemsController?.dispose();
      _localSelectedItemsController = null;
      _selectedItemsController = selectedItemsController;
    }
  }

  /// [_selectedItemsController] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsController.value = selectedItems;
  }
}
