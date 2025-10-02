import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of a single item input dropdown.
class MyoroMultiInputDropdownViewModel<T>
    extends
        MyoroInputDropdownViewModel<
          T,
          MyoroMultiInputDropdownConfiguration<T>,
          MyoroMultiDropdownController<T>
        > {
  MyoroMultiInputDropdownViewModel(MyoroMultiInputDropdownConfiguration<T> configuration)
    : super(
        configuration,
        MyoroMultiDropdownController(
          configuration: MyoroMultiDropdownConfiguration(
            targetKey: GlobalKey(),
            menuConfiguration: configuration.menuConfiguration,
            dropdownType: configuration.dropdownType,
          ),
        ),
      ) {
    state.dropdownController.selectedItemsNotifier.addListener(formatItems);
  }

  @override
  void formatItems() {
    final selectedItems = state.dropdownController.selectedItems;
    state.inputController.text = selectedItems
        .map(state.configuration.selectedItemBuilder)
        .join(', ');
  }

  @override
  Widget buildDropdownWidget(Widget inputWidget) {
    return MyoroMultiDropdown(
      controller: state.dropdownController,
      menuStyle: MyoroMenuStyle(border: Border.all(width: 2, color: Colors.pink)),
      child: inputWidget,
    );
  }
}
