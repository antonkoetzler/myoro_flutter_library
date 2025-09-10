import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
    : super(configuration, MyoroMultiMenuController(configuration: configuration.menuConfiguration));

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
    final menuBorder = dropdownThemeExtension.menuBorder;
    final menuBorderRadius = dropdownThemeExtension.menuBorderRadius;

    final menuThemeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>()
      ..copyWith(
        border: menuBorder,
        borderProvided: menuBorder != null,
        borderRadius: menuBorderRadius,
        borderRadiusProvided: menuBorderRadius != null,
      );

    final menuController = state.menuController;

    return MyoroMultiMenu<T>(controller: menuController, themeExtension: menuThemeExtension);
  }
}
