part of '../myoro_accordion.dart';

/// Controller implementation of [MyoroAccordion].
///
/// TODO: Needs to be tested.
final class MyoroAccordionControllerImpl extends MyoroAccordionController {
  ValueNotifier<MyoroAccordionItem?> get expandedItemNotifier => _expandedItemNotifier;
  MyoroAccordionItem? get expandedItem => _expandedItemNotifier.value;
  ScrollController get scrollController => _scrollController;

  @override
  void expandItem(MyoroAccordionItem item) {
    _expandedItemNotifier.value = item;
  }

  @override
  void reset() {
    _expandedItemNotifier.value = null;
  }
}
