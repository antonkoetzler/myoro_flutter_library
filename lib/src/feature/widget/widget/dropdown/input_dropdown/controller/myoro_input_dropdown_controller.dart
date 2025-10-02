import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of an input dropdown.
abstract class MyoroInputDropdownController<
  T,
  VIEW_MODEL extends MyoroInputDropdownViewModel<
    T,
    MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
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
}
