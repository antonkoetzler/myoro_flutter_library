import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleSelectionDropdown].
class MyoroSingleSelectionDropdownViewModel<T>
    extends
        MyoroSelectionDropdownViewModel<
          T,
          MyoroSingleSelectionDropdownConfiguration<T>,
          MyoroSingleDropdownController<T>
        > {
  MyoroSingleSelectionDropdownViewModel(MyoroSingleSelectionDropdownConfiguration<T> configuration)
    : super(
        configuration,
        MyoroSingleDropdownController(
          configuration: MyoroSingleDropdownConfiguration(
            targetKey: GlobalKey(),
            dropdownType: configuration.dropdownType,
            menuConfiguration: configuration.menuConfiguration,
          ),
        ),
      ) {
    state.dropdownController.selectedItemNotifier.addListener(_selectedItemNotifierListener);
  }

  @override
  void formatItems() {
    final selectedItem = state.dropdownController.selectedItem;
    state.inputController.text = selectedItem == null
        ? kMyoroEmptyString
        : state.configuration.selectedItemBuilder(selectedItem);
  }

  @override
  Widget buildDropdownWidget(Widget inputWidget) {
    return MyoroSingleDropdown(controller: state.dropdownController, child: inputWidget);
  }

  /// Listener of [MyoroSingleDropdownController.selectedItemNotifier].
  void _selectedItemNotifierListener() {
    final configuration = state.configuration;
    final onChanged = configuration.onChanged;
    final selectedItem = state.dropdownController.selectedItem;
    onChanged?.call(selectedItem);
    formatItems();
  }
}
