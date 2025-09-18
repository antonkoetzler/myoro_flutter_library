part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordionViewModel].
class MyoroAccordionState {
  MyoroAccordionState(this.configuration, Set<MyoroAccordionItem> selectedItems)
    : _selectedItemsNotifier = ValueNotifier(selectedItems.isEmpty ? {} : selectedItems);

  /// Configuration.
  final MyoroAccordionConfiguration configuration;

  /// [ValueNotifier] controlling the selected [MyoroAccordionItem].
  final ValueNotifier<Set<MyoroAccordionItem>> _selectedItemsNotifier;

  /// [_selectedItemsNotifier] getter.
  ValueNotifier<Set<MyoroAccordionItem>> get selectedItemsNotifier {
    return _selectedItemsNotifier;
  }

  /// Getter of [_selectedItemsNotifier]'s value.
  Set<MyoroAccordionItem> get selectedItems {
    return _selectedItemsNotifier.value;
  }

  /// [_selectedItemsNotifier] setter.
  set selectedItems(Set<MyoroAccordionItem> selectedItems) {
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
