import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of an input dropdown.
abstract class MyoroInputDropdownController<
  T,
  CONFIGURATION extends MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  VIEW_MODEL extends MyoroInputDropdownViewModel<
    T,
    CONFIGURATION,
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
  MyoroInputDropdownController(this.viewModel);

  /// View model.
  @protected
  final VIEW_MODEL viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
  }

  /// Getter of the dropdown's configuration.
  CONFIGURATION get configuration {
    return viewModel.state.configuration;
  }
}
