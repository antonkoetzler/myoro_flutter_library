import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleDropdown].
final class MyoroSingleDropdownViewModel<T>
    extends MyoroDropdownViewModel<T, MyoroSingleDropdownConfiguration<T>, MyoroSingleMenuController<T>> {
  MyoroSingleDropdownViewModel(MyoroSingleDropdownConfiguration<T> configuration)
    : super(configuration, MyoroSingleMenuController(configuration: configuration.menuConfiguration)) {
    state.menuController.selectedItemNotifier.addListener(disable);
  }

  @override
  Widget get menuWidget {
    return MyoroSingleMenu(controller: state.menuController, style: menuStyle);
  }
}
