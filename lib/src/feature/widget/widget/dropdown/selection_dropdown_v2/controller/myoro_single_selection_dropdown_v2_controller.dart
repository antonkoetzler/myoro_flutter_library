import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingleSelectionDropdownV2] controller.
class MyoroSingleSelectionDropdownV2Controller<T>
    extends MyoroSelectionDropdownV2Controller<T, MyoroSingleSelectionDropdownV2ViewModel<T>> {
  MyoroSingleSelectionDropdownV2Controller(MyoroSingleSelectionDropdownV2Configuration<T> configuration)
    : super(MyoroSingleSelectionDropdownV2ViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<T?> get selectedItemNotifier {
    return viewModel.state.dropdownController.selectedItemNotifier;
  }
}
