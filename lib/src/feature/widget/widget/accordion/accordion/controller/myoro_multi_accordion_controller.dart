import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiAccordion].
class MyoroMultiAccordionController<T> extends MyoroAccordionController<T, MyoroMultiAccordionViewModel<T>> {
  MyoroMultiAccordionController({required MyoroMultiAccordionConfiguration<T> configuration})
    : super(MyoroMultiAccordionViewModel(configuration));

  /// [ValueNotifier] of the selected items of the [MyoroMultiAccordion].
  ValueNotifier<Set<T>> get selectedItemsController {
    return viewModel.state.selectedItemsController;
  }

  /// Selected items of the [MyoroMultiAccordion].
  Set<T> get selectedItems {
    return selectedItemsController.value;
  }
}
