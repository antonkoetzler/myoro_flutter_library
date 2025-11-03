part of 'myoro_selection_dropdown_view_model.dart';

/// Single selection implementation of [MyoroSelectionDropdownViewModel].
class MyoroSingleSelectionDropdownState<T> extends MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroSingleSelectionDropdownState(
    super.label,
    super.enabled,
    super.dropdownType,
    super.items,
    super.showingController,
    T? selectedItem,
    ValueNotifier<T?>? selectedItemController,
    this.allowDeselection,
    super.itemBuilder,
    super.selectedItemBuilder,
    this.onChanged,
  ) {
    _selectedItemController = (selectedItemController ?? (_localSelectedItemController ??= ValueNotifier(selectedItem)));
  }

  /// If the selected item can be deselected.
  final bool allowDeselection;

  /// Local selected items [ValueNotifier].
  ValueNotifier<T?>? _localSelectedItemController;

  /// [ValueNotifier] controlling the selected item(s).
  late final ValueNotifier<T?> _selectedItemController;

  /// Callback executed when the selected item is changed.
  final ValueChanged<T?>? onChanged;

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

  /// [_selectedItemController] setter.
  set selectedItem(T? selectedItem) {
    _selectedItemController.value = selectedItem;
  }
}
