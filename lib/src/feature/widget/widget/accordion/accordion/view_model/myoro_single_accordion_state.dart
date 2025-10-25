part of 'myoro_accordion_view_model.dart';

/// [State] of [MyoroSingleAccordionViewModel].
class MyoroSingleAccordionState<T> extends MyoroAccordionState<T> {
  /// Default constructor.
  MyoroSingleAccordionState(
    super.thumbVisibility,
    super.titleBuilder,
    super.contentBuilder,
    super.items,
    T? selectedItem,
  ) : _selectedItemController = ValueNotifier(selectedItem);

  /// [ValueNotifier] controlling the selected item.
  final ValueNotifier<T?> _selectedItemController;

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemController.dispose();
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
