import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleDropdown].
final class MyoroSingleDropdownViewModel<T>
    extends MyoroDropdownViewModel<T, MyoroSingleDropdownConfiguration<T>> {
  MyoroSingleDropdownViewModel(MyoroSingleDropdownConfiguration<T> configuration)
    : super(configuration);

  @override
  Widget get dropdownWidget {
    final configuration = state.configuration;
    return MyoroSingleMenu(configuration: configuration.menuConfiguration);
  }
}
