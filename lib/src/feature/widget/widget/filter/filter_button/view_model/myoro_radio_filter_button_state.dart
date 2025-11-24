part of 'myoro_filter_button_view_model.dart';

/// State of [MyoroRadioFilterButton].
class MyoroRadioFilterButtonState<T> extends MyoroFilterButtonState<T> {
  /// Default constructor.
  MyoroRadioFilterButtonState(
    String buttonLabel,
    IconData closeButtonIcon,
    String clearButtonText,
    String applyButtonText,
    MyoroDropdownTypeEnum dropdownType,
    Set<T> items,
    MyoroFilterButtonItemLabelBuilder<T> itemLabelBuilder,
    T? selectedItem,
    this.onChanged,
  ) : _selectedItemController = ValueNotifier(selectedItem),
      _temporarilySelectedItemController = ValueNotifier(selectedItem),
      super(buttonLabel, closeButtonIcon, clearButtonText, applyButtonText, dropdownType, items, itemLabelBuilder);

  /// On changed.
  final MyoroRadioFilterButtonOnChanged<T> onChanged;

  /// Selected items [ValueNotifier].
  final ValueNotifier<T?> _selectedItemController;

  /// Temporarily selected items [ValueNotifier].
  final ValueNotifier<T?> _temporarilySelectedItemController;

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemController.dispose();
    _temporarilySelectedItemController.dispose();
    super.dispose();
  }

  /// [_selectedItemController] getter.
  ValueNotifier<T?> get selectedItemController {
    return _selectedItemController;
  }

  /// [_selectedItemController]'s [T?] getter.
  T? get selectedItem {
    return _selectedItemController.value;
  }

  /// [_temporarilySelectedItemController] getter.
  ValueNotifier<T?> get temporarilySelectedItemController {
    return _temporarilySelectedItemController;
  }

  /// [_temporarilySelectedItemController]'s [T] getter.
  T? get temporarilySelectedItem {
    return _temporarilySelectedItemController.value;
  }

  /// [_selectedItemController]'s setter.
  set selectedItem(T? value) {
    _selectedItemController.value = value;
  }

  /// [_temporarilySelectedItemController]'s setter.
  set temporarilySelectedItem(T? value) {
    _temporarilySelectedItemController.value = value;
  }
}
