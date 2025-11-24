part of 'myoro_filter_button_view_model.dart';

/// State of [MyoroCheckboxFilterButton].
class MyoroCheckboxFilterButtonState<T> extends MyoroFilterButtonState<T> {
  /// Default constructor.
  MyoroCheckboxFilterButtonState(
    String buttonLabel,
    IconData closeButtonIcon,
    String clearButtonText,
    String applyButtonText,
    MyoroDropdownTypeEnum dropdownType,
    Set<T> items,
    MyoroFilterButtonItemLabelBuilder<T> itemLabelBuilder,
    Set<T> selectedItems,
    this.onChanged,
  ) : _selectedItemsController = ValueNotifier(selectedItems),
      _temporarilySelectedItemsController = ValueNotifier(selectedItems),
      super(buttonLabel, closeButtonIcon, clearButtonText, applyButtonText, dropdownType, items, itemLabelBuilder);

  /// On changed.
  final MyoroCheckboxFilterButtonOnChanged<T> onChanged;

  /// Selected items [ValueNotifier].
  final ValueNotifier<Set<T>> _selectedItemsController;

  /// Temporarily selected items [ValueNotifier].
  final ValueNotifier<Set<T>> _temporarilySelectedItemsController;

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemsController.dispose();
    _temporarilySelectedItemsController.dispose();
    super.dispose();
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// [_selectedItemsController]'s [T?] getter.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }

  /// [_temporarilySelectedItemsController] getter.
  ValueNotifier<Set<T>> get temporarilySelectedItemsController {
    return _temporarilySelectedItemsController;
  }

  /// [_temporarilySelectedItemsController]'s [T] getter.
  Set<T> get temporarilySelectedItems {
    return _temporarilySelectedItemsController.value;
  }

  /// [_selectedItemsController]'s setter.
  set selectedItems(Set<T> value) {
    _selectedItemsController.value = value;
  }

  /// [_temporarilySelectedItemsController]'s setter.
  set temporarilySelectedItems(Set<T> value) {
    _temporarilySelectedItemsController.value = value;
  }
}
