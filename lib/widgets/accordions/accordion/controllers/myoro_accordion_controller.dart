import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_controller_interface.dart';
part 'myoro_accordion_controller_state.dart';

/// Controller of [MyoroAccordion].
class MyoroAccordionController implements MyoroAccordionControllerInterface {
  MyoroAccordionController({required List<MyoroAccordionItem> items})
    : assert(items.isNotEmpty, '[MyoroAccordionController]: [items] cannot be empty.'),
      state = MyoroAccordionControllerState(items);

  final MyoroAccordionControllerState state;

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void expandItem(MyoroAccordionItem item) {
    state.expandedItemController.value = item;
  }

  @override
  void reset() {
    state.expandedItemController.value = null;
  }
}
