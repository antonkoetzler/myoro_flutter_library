import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleDropdown].
class MyoroSingleDropdownController<T>
    extends
        MyoroDropdownController<
          T,
          MyoroSingleDropdownConfiguration<T>,
          MyoroSingleMenuController<T>,
          MyoroSingleDropdownViewModel<T>
        > {
  /// Creates a new instance of [MyoroSingleDropdownController].
  MyoroSingleDropdownController({required MyoroSingleDropdownConfiguration<T> configuration})
    : super(configuration: configuration, viewModel: MyoroSingleDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<T?> get selectedItemController {
    return viewModel.state.menuController.selectedItemController;
  }

  /// Getter of [selectedItemController]'s value.
  T? get selectedItem {
    return selectedItemController.value;
  }
}
