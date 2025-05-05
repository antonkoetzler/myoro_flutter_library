import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] of a [MyoroAccordion].
class MyoroAccordionNotifier extends ValueNotifier<MyoroAccordionItem?> {
  MyoroAccordionNotifier([super._value]);

  /// Expands a [MyoroAccordionItem].
  void expandItem(MyoroAccordionItem item) {
    value = item;
  }

  /// Unexpand [expandedItem] if it is not null.
  void reset() {
    value = null;
  }

  /// Alias of [ValueNotifier.value].
  MyoroAccordionItem? get expandedItem => value;
}
