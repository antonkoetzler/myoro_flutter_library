import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingleDropdown] implementation of [MyoroSelectionDropdownController].
class MyoroSingleSelectionDropdownController<T>
    extends MyoroSelectionDropdownController<T, MyoroSingleSelectionDropdownViewModel<T>> {
  MyoroSingleSelectionDropdownController({required MyoroSingleSelectionDropdownConfiguration<T> configuration})
    : super(MyoroSingleSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<T?> get selectedItemNotifier => viewModel.state.menuController.selectedItemNotifier;

  /// Getter of the selected item.
  T? get selectedItem => viewModel.state.menuController.selectedItem;
}
