import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiInputDropdown].
class MyoroMultiInputDropdownController<T>
    extends
        MyoroInputDropdownController<T, MyoroMultiInputDropdownConfiguration<T>, MyoroMultiInputDropdownViewModel<T>> {
  MyoroMultiInputDropdownController({
    required MyoroMultiInputDropdownConfiguration<T> configuration,
    TextEditingController? inputController,
  }) : super(MyoroMultiInputDropdownViewModel(configuration, inputController));
}
