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
  MyoroSingleDropdownController({required MyoroSingleDropdownConfiguration<T> configuration})
    : super(configuration: configuration, viewModel: MyoroSingleDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected item.
  ValueNotifier<T?> get selectedItemNotifier {
    return viewModel.state.menuController.selectedItemNotifier;
  }

  /// Getter of [selectedItemNotifier]'s value.
  T? get selectedItem {
    return selectedItemNotifier.value;
  }
}
