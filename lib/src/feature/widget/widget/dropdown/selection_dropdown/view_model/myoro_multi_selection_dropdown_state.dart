part of 'myoro_selection_dropdown_view_model.dart';

/// Multi selection implementation of [MyoroSelectionDropdownViewModel].
class MyoroMultiSelectionDropdownState<T> extends MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroMultiSelectionDropdownState(
    super.dropdownType,
    super.items,
    super.itemBuilder,
    super.showingController,
    Set<T>? initiallySelectedItems,
    ValueNotifier<Set<T>>? selectedItemsController,
  ) {
    _selectedItemsController =
        selectedItemsController ??
        (_localSelectedItemsController ??= ValueNotifier(initiallySelectedItems ?? const {}));
  }

  /// Local selected items [ValueNotifier].
  ValueNotifier<Set<T>>? _localSelectedItemsController;

  /// [ValueNotifier] controlling the selected item(s).
  late final ValueNotifier<Set<T>> _selectedItemsController;

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

  /// [_selectedItemsController] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsController.value = selectedItems;
  }
}
