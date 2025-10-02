import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMultiDropdown].
final class MyoroMultiDropdownViewModel<T>
    extends
        MyoroDropdownViewModel<T, MyoroMultiDropdownConfiguration<T>, MyoroMultiMenuController<T>> {
  MyoroMultiDropdownViewModel(MyoroMultiDropdownConfiguration<T> configuration)
    : super(
        configuration,
        MyoroMultiMenuController(configuration: configuration.menuConfiguration),
      );

  @override
  Widget menuWidget(MyoroMenuStyle menuStyle) {
    return MyoroMultiMenu(controller: state.menuController, style: menuStyle);
  }
}
