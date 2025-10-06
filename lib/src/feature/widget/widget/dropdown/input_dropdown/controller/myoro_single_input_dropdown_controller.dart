import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleInputDropdown].
class MyoroSingleInputDropdownController<T>
    extends
        MyoroInputDropdownController<
          T,
          MyoroSingleInputDropdownConfiguration<T>,
          MyoroSingleInputDropdownViewModel<T>
        > {
  MyoroSingleInputDropdownController({
    TextEditingController? inputController,
    required MyoroSingleInputDropdownConfiguration<T> configuration,
  }) : super(MyoroSingleInputDropdownViewModel(configuration, inputController));
}
