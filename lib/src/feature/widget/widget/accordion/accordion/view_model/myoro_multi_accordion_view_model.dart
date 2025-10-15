import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMultiAccordion].
class MyoroMultiAccordionViewModel<T> extends MyoroAccordionViewModel<T> {
  /// Default constructor.
  MyoroMultiAccordionViewModel(MyoroMultiAccordionConfiguration<T> configuration)
    : super(configuration, configuration.selectedItems);

  /// Toggles an item.
  @override
  void toggleItem(T item) {
    final selectedItems = Set<T>.from(state.selectedItems);
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    state.selectedItems = selectedItems;
  }
}
