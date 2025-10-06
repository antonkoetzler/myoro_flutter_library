import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of a single item input dropdown.
class MyoroMultiInputDropdownViewModel<T>
    extends MyoroInputDropdownViewModel<T, MyoroMultiInputDropdownConfiguration<T>, MyoroMultiDropdownController<T>> {
  MyoroMultiInputDropdownViewModel(
    MyoroMultiInputDropdownConfiguration<T> configuration,
    TextEditingController? inputController,
  ) : super(
        configuration,
        inputController,
        MyoroMultiDropdownController(
          configuration: MyoroMultiDropdownConfiguration(
            targetKey: GlobalKey(),
            menuConfiguration: configuration.menuConfiguration,
            dropdownType: configuration.dropdownType,
          ),
        ),
      );

  @override
  Widget buildDropdownWidget(BuildContext context, Widget inputWidget) {
    return MyoroMultiDropdown(
      controller: state.dropdownController,
      menuStyle: buildMenuStyle(context),
      child: inputWidget,
    );
  }
}
