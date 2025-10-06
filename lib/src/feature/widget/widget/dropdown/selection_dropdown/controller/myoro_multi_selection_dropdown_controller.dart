import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiSelectionDropdown] controller.
class MyoroMultiSelectionDropdownController<T>
    extends MyoroSelectionDropdownController<T, MyoroMultiSelectionDropdownViewModel<T>> {
  MyoroMultiSelectionDropdownController(MyoroMultiSelectionDropdownConfiguration<T> configuration)
    : super(MyoroMultiSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<Set<T>> get selectedItemsNotifier {
    return viewModel.state.dropdownController.selectedItemsNotifier;
  }
}
