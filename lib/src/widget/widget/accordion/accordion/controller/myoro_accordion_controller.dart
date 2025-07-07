import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroAccordion].
class MyoroAccordionController extends ValueNotifier<MyoroAccordionItem?> {
  MyoroAccordionController({MyoroAccordionItem? initiallyExpandedItem, required this.items})
    : assert(items.isNotEmpty, '[MyoroAccordionController]: [items] cannot be empty.'),
      super(initiallyExpandedItem);

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final Set<MyoroAccordionItem> items;

  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item) {
    value = item;
  }

  /// Expanded [expandedItemController]'s value if it is not null.
  void reset() {
    value = null;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionController &&
        other.runtimeType == runtimeType &&
        other.value == value &&
        other.items == items;
  }

  @override
  int get hashCode {
    return Object.hash(value, items);
  }

  @override
  String toString() =>
      'MyoroAccordionController(\n'
      '  value: $value,\n'
      '  items: $items,\n'
      ');';

  /// Alias of [value].
  MyoroAccordionItem? get expandedItem => value;
}
