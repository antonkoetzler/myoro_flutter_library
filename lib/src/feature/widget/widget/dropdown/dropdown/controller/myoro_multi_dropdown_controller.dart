import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementation of [MyoroDropdownController].
class MyoroMultiDropdownController<T> extends MyoroDropdownController<T, MyoroMultiDropdownViewModel<T>> {
  MyoroMultiDropdownController({required MyoroMultiDropdownConfiguration<T> configuration})
    : super(MyoroMultiDropdownViewModel(configuration));

  /// [ValueNotifier] controlling which items are selected.
  ValueNotifier<Set<T>> get selectedItemsNotifier => viewModel.state.selectedItemsNotifier;

  /// Returns the selected items.
  Set<T> get selectedItems => viewModel.state.selectedItems;
}
