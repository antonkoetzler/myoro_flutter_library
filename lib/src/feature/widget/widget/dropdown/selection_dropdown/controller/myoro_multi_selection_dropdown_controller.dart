import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementation of [MyoroSelectionDropdownController].
class MyoroMultiSelectionDropdownController<T>
    extends MyoroSelectionDropdownController<T, MyoroMultiSelectionDropdownViewModel<T>> {
  MyoroMultiSelectionDropdownController({required MyoroMultiSelectionDropdownConfiguration<T> configuration})
    : super(MyoroMultiSelectionDropdownViewModel(configuration));

  /// [ValueNotifier] controlling which items are selected.
  ValueNotifier<Set<T>> get selectedItemsNotifier => viewModel.state.menuController.selectedItemsNotifier;

  /// Returns the selected items.
  Set<T> get selectedItems => viewModel.state.menuController.selectedItems;
}
