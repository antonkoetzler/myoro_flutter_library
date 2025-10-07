import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiDropdown].
class MyoroMultiDropdownController<T>
    extends
        MyoroDropdownController<
          T,
          MyoroMultiDropdownConfiguration<T>,
          MyoroMultiMenuController<T>,
          MyoroMultiDropdownViewModel<T>
        > {
  /// Creates a new instance of [MyoroMultiDropdownController].
  MyoroMultiDropdownController({required MyoroMultiDropdownConfiguration<T> configuration})
    : super(configuration: configuration, viewModel: MyoroMultiDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<Set<T>> get selectedItemsController {
    return viewModel.state.menuController.selectedItemsController;
  }

  /// Getter of [selectedItemsController]'s value.
  Set<T> get selectedItems {
    return selectedItemsController.value;
  }
}
