part of 'myoro_accordion_view_model.dart';

/// [State] of [MyoroMultiAccordionViewModel].
class MyoroMultiAccordionState<T> extends MyoroAccordionState<T> {
  /// Default constructor.
  MyoroMultiAccordionState(
    super.thumbVisibility,
    super.titleBuilder,
    super.contentBuilder,
    super.items,
    Set<T> selectedItems,
  ) : _selectedItemsController = ValueNotifier(selectedItems.isEmpty ? {} : selectedItems);

  /// [ValueNotifier] controlling the selected item(s).
  final ValueNotifier<Set<T>> _selectedItemsController;

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemsController.dispose();
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
