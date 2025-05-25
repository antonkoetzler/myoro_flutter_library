import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroAccordionController].
class MyoroAccordionControllerState {
  MyoroAccordionControllerState(this.items);

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  /// [ValueNotifier] controller which [MyoroAccordionItem] is selected.
  final expandedItemController = ValueNotifier<MyoroAccordionItem?>(null);
  MyoroAccordionItem? get expandedItem => expandedItemController.value;

  /// Dispose function.
  void dispose() {
    expandedItemController.dispose();
  }
}
