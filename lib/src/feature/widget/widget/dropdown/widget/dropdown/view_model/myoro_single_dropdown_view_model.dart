import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingleDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroSingleDropdownViewModel<T>
    extends
        MyoroDropdownViewModel<
          T,
          MyoroSingleDropdownConfiguration<T>,
          MyoroSingleMenuConfiguration<T>,
          MyoroSingleMenuController<T>
        > {
  MyoroSingleDropdownViewModel(MyoroSingleDropdownConfiguration<T> configuration)
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
    final dropdownThemeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final menuBorder = dropdownThemeExtension.menuBorder;
    final menuBorderRadius = dropdownThemeExtension.menuBorderRadius;

    final menuThemeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>().copyWith(
      border: menuBorder,
      borderProvided: menuBorder != null,
      borderRadius: menuBorderRadius,
      borderRadiusProvided: menuBorderRadius != null,
    );

    final menuController = state.menuController;

    return MyoroSingleMenu<T>(controller: menuController, themeExtension: menuThemeExtension);
  }
}
