import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroAccordion].
class MyoroAccordionController {
  /// [ValueNotifier] controlling which [MyoroAccordionItem].
  final _expandedItemNotifier = ValueNotifier<MyoroAccordionItem?>(null);
  ValueNotifier<MyoroAccordionItem?> get expandedItemNotifier => _expandedItemNotifier;

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  /// Dispose function
  void dispose() {
    _expandedItemNotifier.dispose();
    _scrollController.dispose();
  }

  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item) {
    _expandedItemNotifier.value = item;
  }

  /// Expanded [expandedItemNotifier]'s value if it is not null.
  void reset() {
    _expandedItemNotifier.value = null;
  }
}
