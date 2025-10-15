import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleAccordion].
class MyoroSingleAccordionViewModel<T> extends MyoroAccordionViewModel<T> {
  /// Default constructor.
  MyoroSingleAccordionViewModel(MyoroSingleAccordionConfiguration<T> configuration) : super(configuration, {?configuration.selectedItem});

  /// Toggles an item.
  @override
  void toggleItem(T item) {
    state.selectedItems = {if (!state.selectedItems.contains(item)) item};
  }
}
