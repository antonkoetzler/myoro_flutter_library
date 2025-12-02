part of 'myoro_selection_dropdown_state.dart';

/// Single selection implementation of [MyoroSelectionDropdownViewModel].
class MyoroSingleSelectionDropdownState<T> extends MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroSingleSelectionDropdownState(
    super.label,
    super.enabled,
    super.enableSearch,
    super.dropdownType,
    super.items,
    super.showingController,
    super.itemBuilder,
    super.selectedItemBuilder,
    T? selectedItem,
    ValueNotifier<T?>? selectedItemController,
    this.allowDeselection,
    this.onChanged,
  ) {
    _selectedItemController =
        (selectedItemController ?? (_localSelectedItemController ??= ValueNotifier(selectedItem)));
  }

  /// Local selected items [ValueNotifier].
  ValueNotifier<T?>? _localSelectedItemController;

  /// [ValueNotifier] controlling the selected item(s).
  late ValueNotifier<T?> _selectedItemController;

  /// If the selected item can be deselected.
  bool allowDeselection;

  /// Callback executed when the selected item is changed.
  ValueChanged<T?>? onChanged;

  /// Dispose function.
  @override
  void dispose() {
    _localSelectedItemController?.dispose();
    super.dispose();
  }

  /// [_selectedItemController] getter.
  ValueNotifier<T?> get selectedItemController {
    return _selectedItemController;
  }

  /// Getter of [_selectedItemController]'s value.
  T? get selectedItem {
    return _selectedItemController.value;
  }

  /// Setter of the selected item controller.
  set selectedItemController(ValueNotifier<T?>? selectedItemController) {
    if (selectedItemController == null) {
      _selectedItemController = _localSelectedItemController ??= ValueNotifier(selectedItem);
    } else {
      _localSelectedItemController?.dispose();
      _localSelectedItemController = null;
      _selectedItemController = selectedItemController;
    }
  }

  /// [_selectedItemController] setter.
  set selectedItem(T? selectedItem) {
    _selectedItemController.value = selectedItem;
  }
}
