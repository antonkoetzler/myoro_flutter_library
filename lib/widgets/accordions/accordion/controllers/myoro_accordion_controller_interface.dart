part of 'myoro_accordion_controller.dart';

/// Inferface of [MyoroAccordionController].
abstract interface class MyoroAccordionControllerInterface {
  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item);

  /// Expanded [expandedItemController]'s value if it is not null.
  void reset();
}
