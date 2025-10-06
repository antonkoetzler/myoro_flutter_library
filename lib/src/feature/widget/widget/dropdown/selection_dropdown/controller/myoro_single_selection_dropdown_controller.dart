import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleSelectionDropdown].
class MyoroSingleSelectionDropdownController<T>
    extends
        MyoroSelectionDropdownController<
          T,
          MyoroSingleInputDropdownController<T>,
          MyoroSingleSelectionDropdownViewModel<T>
        > {
  MyoroSingleSelectionDropdownController({required MyoroSingleSelectionDropdownConfiguration<T> configuration})
    : super(MyoroSingleSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<T?> get selectedItemNotifier {
    return viewModel.state.inputDropdownController.menuController.selectedItemNotifier;
  }

  /// Getter of [selectedItemNotifier]'s value.
  T? get selectedItem {
    return selectedItemNotifier.value;
  }
}
