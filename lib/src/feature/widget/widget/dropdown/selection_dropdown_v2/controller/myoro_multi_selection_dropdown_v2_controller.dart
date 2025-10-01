import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiSelectionDropdownV2] controller.
class MyoroMultiSelectionDropdownV2Controller<T>
    extends MyoroSelectionDropdownV2Controller<T, MyoroMultiSelectionDropdownV2ViewModel<T>> {
  MyoroMultiSelectionDropdownV2Controller(MyoroMultiSelectionDropdownV2Configuration<T> configuration)
    : super(MyoroMultiSelectionDropdownV2ViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<Set<T>> get selectedItemsNotifier {
    return viewModel.state.dropdownController.selectedItemsNotifier;
  }
}
