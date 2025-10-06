import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMultiSelectionDropdown].
final class MyoroMultiSelectionDropdownViewModel<T>
    extends MyoroSelectionDropdownViewModel<T, MyoroMultiInputDropdownController<T>> {
  MyoroMultiSelectionDropdownViewModel(MyoroMultiSelectionDropdownConfiguration<T> configuration)
    : super(
        MyoroMultiInputDropdownController<T>(
          configuration: MyoroMultiInputDropdownConfiguration(
            dropdownType: configuration.dropdownType,
            menuConfiguration: configuration.menuConfiguration,
            selectedItemBuilder: configuration.selectedItemBuilder,
            toggleDropdownOnInputTap: configuration.toggleDropdownOnInputTap,
            toggleDropdownOnFieldSubmitted: configuration.toggleDropdownOnFieldSubmitted,
          ),
          inputController: TextEditingController(),
        ),
      ) {
    state.inputDropdownController.menuController.selectedItemsNotifier.addListener(formatItems);
  }

  @override
  void formatItems() {
    final selectedItems = state.inputDropdownController.menuController.selectedItems;
    final selectedItemsBuilder = state.inputDropdownController.configuration.selectedItemBuilder;
    state.inputDropdownController.inputController.text = selectedItems.isNotEmpty
        ? selectedItems.map(selectedItemsBuilder).join(', ')
        : kMyoroEmptyString;
  }
}
