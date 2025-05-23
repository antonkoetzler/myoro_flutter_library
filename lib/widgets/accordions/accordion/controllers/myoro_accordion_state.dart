import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroAccordion].
class MyoroAccordionState {
  /// [ValueNotifier] controlling which [MyoroAccordionItem].
  final expandedItemController = ValueNotifier<MyoroAccordionItem?>(null);

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final scrollController = ScrollController();

  /// Dispose function
  void dispose() {
    expandedItemController.dispose();
    scrollController.dispose();
  }
}
