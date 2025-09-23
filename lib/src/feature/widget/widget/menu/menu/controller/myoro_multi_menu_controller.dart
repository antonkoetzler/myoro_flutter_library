import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiMenu].
class MyoroMultiMenuController<T> extends MyoroMenuController<T, MyoroMultiMenuViewModel<T>> {
  MyoroMultiMenuController({required MyoroMultiMenuConfiguration<T> configuration})
    : super(MyoroMultiMenuViewModel(configuration));

  /// [ValueNotifier] of the selected items.
  ValueNotifier<Set<T>> get selectedItemsNotifier => viewModel.state.selectedItemsNotifier;

  /// Getter of [selectedItemsNotifier]'s value.
  Set<T> get selectedItems => selectedItemsNotifier.value;
}
