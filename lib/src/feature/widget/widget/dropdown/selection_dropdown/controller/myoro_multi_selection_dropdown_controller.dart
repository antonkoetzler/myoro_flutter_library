import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiSelectionDropdown].
class MyoroMultiSelectionDropdownController<T>
    extends
        MyoroSelectionDropdownController<
          T,
          MyoroMultiInputDropdownController<T>,
          MyoroMultiSelectionDropdownViewModel<T>
        > {
  /// Creates a new instance of [MyoroMultiSelectionDropdownController].
  MyoroMultiSelectionDropdownController(MyoroMultiSelectionDropdownConfiguration<T> configuration)
    : super(MyoroMultiSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<Set<T>> get selectedItemsController {
    return viewModel.state.inputDropdownController.menuController.selectedItemsController;
  }

  /// Getter of [selectedItemsController]'s value.
  Set<T> get selectedItems {
    return selectedItemsController.value;
  }
}
