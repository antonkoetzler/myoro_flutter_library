import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiMenu].
class MyoroMultiMenuController<T> extends MyoroMenuController<T, MyoroMultiMenuViewModel<T>> {
  /// Creates a new instance of [MyoroMultiMenuController].
  MyoroMultiMenuController({required MyoroMultiMenuConfiguration<T> configuration})
    : super(MyoroMultiMenuViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<Set<T>> get selectedItemsController => viewModel.state.selectedItemsController;

  /// Getter of [selectedItemsController]'s value.
  Set<T> get selectedItems => selectedItemsController.value;
}
