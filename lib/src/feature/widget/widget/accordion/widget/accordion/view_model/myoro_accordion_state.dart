part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordionViewModel].
class MyoroAccordionState<T> {
  MyoroAccordionState(this.configuration, Set<T> selectedItems)
    : _selectedItemsNotifier = ValueNotifier(selectedItems.isEmpty ? {} : selectedItems);

  /// Configuration.
  MyoroAccordionConfiguration<T> configuration;

  /// [ValueNotifier] controlling the selected item(s).
  final ValueNotifier<Set<T>> _selectedItemsNotifier;

  /// [_selectedItemsNotifier] getter.
  ValueNotifier<Set<T>> get selectedItemsNotifier {
    return _selectedItemsNotifier;
  }

  /// Getter of [_selectedItemsNotifier]'s value.
  Set<T> get selectedItems {
    return _selectedItemsNotifier.value;
  }

  /// [_selectedItemsNotifier] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsNotifier.value = selectedItems;
  }

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// Dispose function
  void dispose() {
    _selectedItemsNotifier.dispose();
    _scrollController.dispose();
  }
}
