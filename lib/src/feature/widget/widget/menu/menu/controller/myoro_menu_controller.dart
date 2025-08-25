import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract controller of a menu.
abstract class MyoroMenuController<T, V extends MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>> {
  MyoroMenuController(this.viewModel);

  /// View model.
  @protected
  final V viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
  }

  /// Toggles an item of the menu.
  void toggleItem(T item) => viewModel.toggleItem(item);

  /// Clears the menu's items.
  void clear() => viewModel.state.selectedItems = const {};
}
