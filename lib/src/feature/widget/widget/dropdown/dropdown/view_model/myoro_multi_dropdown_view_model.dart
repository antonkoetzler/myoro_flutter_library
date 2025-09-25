import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// [MyoroMultiDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroMultiDropdownViewModel<T>
    extends
        MyoroDropdownViewModel<
          T,
          MyoroMultiDropdownConfiguration<T>,
          MyoroMultiMenuConfiguration<T>,
          MyoroMultiMenuController<T>
        > {
  MyoroMultiDropdownViewModel(MyoroMultiDropdownConfiguration<T> configuration)
    : super(configuration, MyoroMultiMenuController(configuration: configuration.menuConfiguration)) {
    state.menuController.selectedItemsNotifier.addListener(selectedItemsNotifierListener);
  }

  @override
  void enabledNotifierListener() {
    final configuration = state.configuration;
    final checkboxOnChanged = configuration.checkboxOnChanged;
    final enabled = state.enabled;
    final menuController = state.menuController;
    final selectedItems = menuController.selectedItems;
    checkboxOnChanged?.call(enabled, selectedItems);
  }

  @override
  void selectedItemsNotifierListener() {
    super.selectedItemsNotifierListener();
    final configuration = state.configuration;
    final onChanged = configuration.onChanged;
    final menuController = state.menuController;
    final selectedItems = menuController.selectedItems;
    onChanged?.call(selectedItems);
  }

  @override
  void formatSelectedItems() {
    final Set<T> selectedItems = state.menuController.selectedItemsNotifier.value;
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
    final dropdownThemeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final dropdownStyle = context.read<MyoroDropdownStyle>();
    final menuBorder = dropdownStyle.menuBorder ?? dropdownThemeExtension.menuBorder;
    final menuBorderRadius = dropdownStyle.menuBorderRadius ?? dropdownThemeExtension.menuBorderRadius;

    final menuController = state.menuController;

    return MyoroMultiMenu<T>(
      controller: menuController,
      style: MyoroMenuStyle(border: menuBorder, borderRadius: menuBorderRadius),
    );
  }
}
