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
  /// Creates a new instance of [MyoroSingleSelectionDropdownController].
  MyoroSingleSelectionDropdownController({required MyoroSingleSelectionDropdownConfiguration<T> configuration})
    : super(MyoroSingleSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<T?> get selectedItemController {
    return viewModel.state.inputDropdownController.menuController.selectedItemController;
  }

  /// Getter of [selectedItemController]'s value.
  T? get selectedItem {
    return selectedItemController.value;
  }
}
