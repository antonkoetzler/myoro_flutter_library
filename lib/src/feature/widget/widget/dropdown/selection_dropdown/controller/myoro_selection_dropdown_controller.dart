import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Selection dropdown controller.
abstract class MyoroSelectionDropdownController<
  T,
  INPUT_DROPDOWN_CONTROLLER extends MyoroInputDropdownController<
    T,
    MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>,
    MyoroInputDropdownViewModel<
      T,
      MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroDropdownController<
        T,
        MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
        MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>,
        MyoroDropdownViewModel<
          T,
          MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
          MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
        >
      >
    >
  >,
  VIEW_MODEL extends MyoroSelectionDropdownViewModel<T, INPUT_DROPDOWN_CONTROLLER>
> {
  /// Default constructor.
  MyoroSelectionDropdownController(VIEW_MODEL viewModel) : _viewModel = viewModel;

  /// View model.
  final VIEW_MODEL _viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
  }

  /// Toggles if the dropdown is enabled or not.
  void toggleEnabled([bool? enabled]) {
    viewModel.state.inputDropdownController.toggleEnabled(enabled);
  }

  /// Clears the selected items.
  void clear() {
    viewModel.clear();
  }

  /// Toggles an item.
  void toggleItem(T item) {
    viewModel.toggleItem(item);
  }

  /// [_viewModel] getter.
  VIEW_MODEL get viewModel => _viewModel;

  /// Getter of whether the dropdown is enabled or not.
  bool get enabled => viewModel.state.inputDropdownController.enabled;
}
