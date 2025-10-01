import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiDropdown].
class MyoroMultiDropdownController<T>
    extends MyoroDropdownController<T, MyoroMultiDropdownConfiguration<T>, MyoroMultiDropdownViewModel<T>> {
  MyoroMultiDropdownController({required MyoroMultiDropdownConfiguration<T> configuration})
    : super(configuration: configuration, viewModel: MyoroMultiDropdownViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<Set<T>> get selectedItemsNotifier {
    return viewModel.state.menuController.selectedItemsNotifier;
  }

  /// Getter of [selectedItemsNotifier]'s value.
  Set<T> get selectedItems {
    return selectedItemsNotifier.value;
  }
}
