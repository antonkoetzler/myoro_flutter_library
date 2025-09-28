import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// [MyoroMultiSelectionDropdown] controller implementation if [MyoroSelectionDropdownViewModel].
final class MyoroMultiSelectionDropdownViewModel<T>
    extends
        MyoroSelectionDropdownViewModel<
          T,
          MyoroMultiSelectionDropdownConfiguration<T>,
          MyoroMultiDropdownConfiguration<T>,
          MyoroMultiDropdownController<T>
        > {
  MyoroMultiSelectionDropdownViewModel(MyoroMultiSelectionDropdownConfiguration<T> configuration)
    : super(configuration, MyoroMultiMenuController(configuration: configuration.menuConfiguration)) {
    state.dropdownController.selectedItemsNotifier.addListener(selectedItemsNotifierListener);
  }

  @override
  void enabledNotifierListener() {
    final configuration = state.configuration;
    final checkboxOnChanged = configuration.checkboxOnChanged;
    final enabled = state.enabled;
    final dropdownController = state.dropdownController;
    final selectedItems = dropdownController.selectedItems;
    checkboxOnChanged?.call(enabled, selectedItems);
  }

  @override
  void selectedItemsNotifierListener() {
    super.selectedItemsNotifierListener();
    final configuration = state.configuration;
    final onChanged = configuration.onChanged;
    final dropdownController = state.dropdownController;
    final selectedItems = dropdownController.selectedItems;
    onChanged?.call(selectedItems);
  }

  @override
  void formatSelectedItems() {
    final Set<T> selectedItems = state.dropdownController.selectedItemsNotifier.value;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(state.configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    state.inputController.text = stringBuffer.toString();
  }

  @override
  Widget menuWidget(BuildContext context) {
    final dropdownThemeExtension = context.resolveThemeExtension<MyoroSelectionDropdownThemeExtension>();
    final dropdownStyle = context.read<MyoroSelectionDropdownStyle>();
    final menuBorder = dropdownStyle.menuBorder ?? dropdownThemeExtension.menuBorder;
    final menuBorderRadius = dropdownStyle.menuBorderRadius ?? dropdownThemeExtension.menuBorderRadius;

    final dropdownController = state.dropdownController;

    return MyoroMultiMenu<T>(
      controller: dropdownController,
      style: MyoroMenuStyle(border: menuBorder, borderRadius: menuBorderRadius),
    );
  }
}
