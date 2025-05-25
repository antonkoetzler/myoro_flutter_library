import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
