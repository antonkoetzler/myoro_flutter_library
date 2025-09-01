import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementation of [MyoroDropdownController].
class MyoroSingularDropdownController<T> extends MyoroDropdownController<T, MyoroSingularDropdownViewModel<T>> {
  MyoroSingularDropdownController({required MyoroSingularDropdownConfiguration<T> configuration})
    : super(MyoroSingularDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<T?> get selectedItemNotifier => viewModel.state.menuController.selectedItemNotifier;

  /// Getter of the selected item.
  T? get selectedItem => viewModel.state.menuController.selectedItem;
}
