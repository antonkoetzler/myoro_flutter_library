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
  MyoroMultiSelectionDropdownController(MyoroMultiSelectionDropdownConfiguration<T> configuration)
    : super(MyoroMultiSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<Set<T>> get selectedItemsNotifier {
    return viewModel.state.inputDropdownController.menuController.selectedItemsNotifier;
  }

  /// Getter of [selectedItemsNotifier]'s value.
  Set<T> get selectedItems {
    return selectedItemsNotifier.value;
  }
}
