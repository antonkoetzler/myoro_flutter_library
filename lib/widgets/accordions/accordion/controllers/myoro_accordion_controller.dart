import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_controller_interface.dart';

/// Controller of [MyoroAccordion].
class MyoroAccordionController extends ValueNotifier<MyoroAccordionItem?> implements MyoroAccordionControllerInterface {
  MyoroAccordionController({MyoroAccordionItem? initiallyExpandedItem, required this.items})
    : assert(items.isNotEmpty, '[MyoroAccordionController]: [items] cannot be empty.'),
      super(initiallyExpandedItem);

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  @override
  void expandItem(MyoroAccordionItem item) {
    value = item;
  }

  @override
  void reset() {
    value = null;
  }

  /// Alias of [value].
  MyoroAccordionItem? get expandedItem => value;
}
