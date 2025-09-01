part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordionViewModel].
class MyoroAccordionState {
  MyoroAccordionState(this.configuration) : _selectedItemNotifier = ValueNotifier(configuration.selectedItem);

  /// Configuration.
  final MyoroAccordionConfiguration configuration;

  /// [ValueNotifier] controlling the selected [MyoroAccordionItem].
  final ValueNotifier<MyoroAccordionItem?> _selectedItemNotifier;

  /// [_selectedItemNotifier] getter.
  ValueNotifier<MyoroAccordionItem?> get selectedItemNotifier {
    return _selectedItemNotifier;
  }

  /// Getter of [_selectedItemNotifier]'s value.
  MyoroAccordionItem? get selectedItem {
    return _selectedItemNotifier.value;
  }

  /// [_selectedItemNotifier] setter.
  set selectedItem(MyoroAccordionItem? selectedItem) {
    _selectedItemNotifier.value = selectedItem;
  }

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// Dispose function
  void dispose() {
    _selectedItemNotifier.dispose();
    _scrollController.dispose();
  }
}
