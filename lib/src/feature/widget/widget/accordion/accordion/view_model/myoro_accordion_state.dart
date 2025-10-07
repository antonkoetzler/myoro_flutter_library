part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordionViewModel].
class MyoroAccordionState<T> {
  /// Creates a new instance of [MyoroAccordionState].
  MyoroAccordionState(this.configuration, Set<T> selectedItems)
    : _selectedItemsController = ValueNotifier(selectedItems.isEmpty ? {} : selectedItems);

  /// Configuration.
  MyoroAccordionConfiguration<T> configuration;

  /// [ValueNotifier] controlling the selected item(s).
  final ValueNotifier<Set<T>> _selectedItemsController;

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// Getter of [_selectedItemsController]'s value.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }

  /// [_selectedItemsController] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsController.value = selectedItems;
  }

  /// Dispose function
  void dispose() {
    _selectedItemsController.dispose();
    _scrollController.dispose();
  }
}
