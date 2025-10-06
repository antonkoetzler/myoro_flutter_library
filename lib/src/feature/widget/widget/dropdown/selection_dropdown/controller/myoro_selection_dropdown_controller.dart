import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller for a selection dropdown.
abstract class MyoroSelectionDropdownController<
  T,
  VIEW_MODEL extends MyoroSelectionDropdownViewModel<
    T,
    MyoroSelectionDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroDropdownController<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroDropdownViewModel<
        T,
        MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
        MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
      >
    >
  >
> {
  MyoroSelectionDropdownController(this.viewModel);

  /// View model.
  @protected
  final VIEW_MODEL viewModel;

  /// Toggles an item.
  void toggleItem(T item) {
    viewModel.state.dropdownController.toggleItem(item);
  }

  /// Clears selected item(s).
  void clear() {
    viewModel.state.dropdownController.clear();
  }

  /// [ValueNotifier] of whether or not the dropdown is being displayed.
  ValueNotifier<bool> get showingNotifier {
    return viewModel.state.dropdownController.showingController;
  }
}
