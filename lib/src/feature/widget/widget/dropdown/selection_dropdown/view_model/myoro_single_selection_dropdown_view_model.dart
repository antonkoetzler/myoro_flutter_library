import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// [MyoroSingleSelectionDropdown] controller implementation if [MyoroSelectionDropdownViewModel].
final class MyoroSingleSelectionDropdownViewModel<T>
    extends
        MyoroSelectionDropdownViewModel<
          T,
          MyoroSingleSelectionDropdownConfiguration<T>,
          MyoroSingleMenuConfiguration<T>,
          MyoroSingleMenuController<T>
        > {
  MyoroSingleSelectionDropdownViewModel(MyoroSingleSelectionDropdownConfiguration<T> configuration)
    : super(configuration, MyoroSingleMenuController(configuration: configuration.menuConfiguration)) {
    state.menuController.selectedItemNotifier.addListener(selectedItemsNotifierListener);
  }

  @override
  void enabledNotifierListener() {
    final configuration = state.configuration;
    final enabled = state.enabled;
    final menuController = state.menuController;
    final selectedItem = menuController.selectedItem;
    configuration.checkboxOnChanged?.call(enabled, selectedItem);
  }

  @override
  void selectedItemsNotifierListener() {
    super.selectedItemsNotifierListener();
    final configuration = state.configuration;
    final onChanged = configuration.onChanged;
    final menuController = state.menuController;
    final selectedItem = menuController.selectedItem;
    onChanged?.call(selectedItem);
    if (selectedItem != null) toggleMenu();
  }

  @override
  void formatSelectedItems() {
    final menuController = state.menuController;
    final selectedItem = menuController.selectedItem;
    final configuration = state.configuration;
    final selectedItemBuilder = configuration.selectedItemBuilder;
    state.inputController.text = selectedItem == null ? '' : selectedItemBuilder(selectedItem);
  }

  @override
  Widget menuWidget(BuildContext context) {
    final dropdownThemeExtension = context.resolveThemeExtension<MyoroSelectionDropdownThemeExtension>();
    final dropdownStyle = context.read<MyoroSelectionDropdownStyle>();
    final menuBorder = dropdownStyle.menuBorder ?? dropdownThemeExtension.menuBorder;
    final menuBorderRadius = dropdownStyle.menuBorderRadius ?? dropdownThemeExtension.menuBorderRadius;

    final menuController = state.menuController;

    return MyoroSingleMenu<T>(
      controller: menuController,
      style: MyoroMenuStyle(border: menuBorder, borderRadius: menuBorderRadius),
    );
  }
}
