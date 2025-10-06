import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleSelectionDropdown].
final class MyoroSingleSelectionDropdownViewModel<T>
    extends MyoroSelectionDropdownViewModel<T, MyoroSingleInputDropdownController<T>> {
  MyoroSingleSelectionDropdownViewModel(MyoroSingleSelectionDropdownConfiguration<T> configuration)
    : super(
        MyoroSingleInputDropdownController<T>(
          configuration: MyoroSingleInputDropdownConfiguration(
            dropdownType: configuration.dropdownType,
            menuConfiguration: configuration.menuConfiguration,
            selectedItemBuilder: configuration.selectedItemBuilder,
            toggleDropdownOnInputTap: configuration.toggleDropdownOnInputTap,
            toggleDropdownOnFieldSubmitted: configuration.toggleDropdownOnFieldSubmitted,
          ),
          inputController: TextEditingController(),
        ),
      ) {
    state.inputDropdownController.menuController.selectedItemNotifier.addListener(formatItems);
  }

  @override
  void formatItems() {
    final selectedItem = state.inputDropdownController.menuController.selectedItem;
    final selectedItemBuilder = state.inputDropdownController.configuration.selectedItemBuilder;
    state.inputDropdownController.inputController.text = selectedItem != null
        ? selectedItemBuilder(selectedItem)
        : kMyoroEmptyString;
  }
}
