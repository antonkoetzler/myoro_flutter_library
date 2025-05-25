import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroAccordionController].
class MyoroAccordionControllerState {
  /// [ValueNotifier] controller which [MyoroAccordionItem] is selected.
  final expandedItemController = ValueNotifier<MyoroAccordionItem?>(null);
  MyoroAccordionItem? get expandedItem => expandedItemController.value;

  /// Dispose function.
  void dispose() {
    expandedItemController.dispose();
  }
}
