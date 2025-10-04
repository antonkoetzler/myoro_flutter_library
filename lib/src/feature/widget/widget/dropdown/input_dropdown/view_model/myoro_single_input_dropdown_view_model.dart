import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of a single item input dropdown.
class MyoroSingleInputDropdownViewModel<T>
    extends MyoroInputDropdownViewModel<T, MyoroSingleInputDropdownConfiguration<T>, MyoroSingleDropdownController<T>> {
  MyoroSingleInputDropdownViewModel(MyoroSingleInputDropdownConfiguration<T> configuration)
    : super(
        configuration,
        MyoroSingleDropdownController(
          configuration: MyoroSingleDropdownConfiguration(
            targetKey: GlobalKey(),
            menuConfiguration: configuration.menuConfiguration,
            dropdownType: configuration.dropdownType,
          ),
        ),
      ) {
    state.dropdownController.selectedItemNotifier.addListener(formatItems);
  }

  @override
  void formatItems() {
    final selectedItem = state.dropdownController.selectedItem;
    state.inputController.text = selectedItem != null ? state.configuration.selectedItemBuilder(selectedItem) : '';
  }

  @override
  Widget buildDropdownWidget(BuildContext context, Widget inputWidget) {
    return MyoroSingleDropdown(
      controller: state.dropdownController,
      menuStyle: buildMenuStyle(context),
      child: inputWidget,
    );
  }
}
