import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMultiSelectionDropdown].
class MyoroMultiSelectionDropdownViewModel<T>
    extends
        MyoroSelectionDropdownViewModel<
          T,
          MyoroMultiSelectionDropdownConfiguration<T>,
          MyoroMultiDropdownController<T>
        > {
  MyoroMultiSelectionDropdownViewModel(MyoroMultiSelectionDropdownConfiguration<T> configuration)
    : super(
        configuration,
        MyoroMultiDropdownController(
          configuration: MyoroMultiDropdownConfiguration(
            targetKey: GlobalKey(),
            dropdownType: configuration.dropdownType,
            menuConfiguration: configuration.menuConfiguration,
          ),
        ),
      ) {
    state.dropdownController.selectedItemsNotifier.addListener(_selectedItemsNotifierListener);
  }

  @override
  void formatItems() {
    final Set<T> selectedItems = state.dropdownController.selectedItems;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(state.configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    state.inputController.text = stringBuffer.toString();
  }

  @override
  Widget buildDropdownWidget(Widget inputWidget) {
    return MyoroMultiDropdown(controller: state.dropdownController, child: inputWidget);
  }

  /// Listener of [MyoroMultiDropdownController.selectedItemsNotifier].
  void _selectedItemsNotifierListener() {
    final configuration = state.configuration;
    final onChanged = configuration.onChanged;
    final selectedItems = state.dropdownController.selectedItems;
    onChanged?.call(selectedItems);
    formatItems();
  }
}
