part of '../myoro_accordion.dart';

/// Controller of [MyoroAccordion].
abstract class MyoroAccordionController {
  /// [ValueNotifier] controlling which [MyoroAccordionItem].
  final _expandedItemNotifier = ValueNotifier<MyoroAccordionItem?>(null);

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();

  /// Dispose function
  void dispose() {
    _expandedItemNotifier.dispose();
    _scrollController.dispose();
  }

  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item);

  /// Expanded [expandedItemNotifier]'s value if it is not null.
  void reset();
}
