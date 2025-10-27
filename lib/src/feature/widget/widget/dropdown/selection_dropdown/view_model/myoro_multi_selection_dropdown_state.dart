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
    this.onChanged,
  ) {
    _selectedItemsController =
        (selectedItemsController ??
              (_localSelectedItemsController ??= ValueNotifier(initiallySelectedItems ?? const {})))
          ..addListener(_selectedItemsControllerListener);
  }

  /// Local selected items [ValueNotifier].
  ValueNotifier<Set<T>>? _localSelectedItemsController;

  /// [ValueNotifier] controlling the selected item(s).
  late final ValueNotifier<Set<T>> _selectedItemsController;

  /// Callback executed when the selected items are changed.
  final ValueChanged<Set<T>>? onChanged;

  /// Dispose function.
  @override
  void dispose() {
    _localSelectedItemsController != null
        ? _localSelectedItemsController!.dispose()
        : _selectedItemsController.removeListener(_selectedItemsControllerListener);
    super.dispose();
  }

  /// Listener for [_selectedItemsController].
  void _selectedItemsControllerListener() {
    onChanged?.call(selectedItems);
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
