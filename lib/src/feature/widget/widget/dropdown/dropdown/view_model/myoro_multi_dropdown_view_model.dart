import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMultiDropdown].
final class MyoroMultiDropdownViewModel<T>
    extends MyoroDropdownViewModel<T, MyoroMultiDropdownConfiguration<T>> {
  MyoroMultiDropdownViewModel(MyoroMultiDropdownConfiguration<T> configuration)
    : super(configuration);

  @override
  Widget get dropdownWidget {
    final configuration = state.configuration;
    return MyoroMultiMenu(configuration: configuration.menuConfiguration);
  }
}
