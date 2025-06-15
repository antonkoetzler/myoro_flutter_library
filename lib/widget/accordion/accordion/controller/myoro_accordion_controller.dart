import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroAccordion].
class MyoroAccordionController extends ValueNotifier<MyoroAccordionItem?> {
  MyoroAccordionController({MyoroAccordionItem? initiallyExpandedItem, required this.items})
    : assert(items.isNotEmpty, '[MyoroAccordionController]: [items] cannot be empty.'),
      super(initiallyExpandedItem);

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item) {
    value = item;
  }

  /// Expanded [expandedItemController]'s value if it is not null.
  void reset() {
    value = null;
  }

  /// Alias of [value].
  MyoroAccordionItem? get expandedItem => value;
}
