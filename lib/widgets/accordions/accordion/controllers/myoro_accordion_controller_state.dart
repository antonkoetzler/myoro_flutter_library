part of 'myoro_accordion_controller.dart';

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
