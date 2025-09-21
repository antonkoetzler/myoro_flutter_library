import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingleDropdown] implementation of [MyoroDropdownController].
class MyoroSingleDropdownController<T> extends MyoroDropdownController<T, MyoroSingleDropdownViewModel<T>> {
  MyoroSingleDropdownController({required MyoroSingleDropdownConfiguration<T> configuration})
    : super(MyoroSingleDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<T?> get selectedItemNotifier => viewModel.state.menuController.selectedItemNotifier;

  /// Getter of the selected item.
  T? get selectedItem => viewModel.state.menuController.selectedItem;
}
