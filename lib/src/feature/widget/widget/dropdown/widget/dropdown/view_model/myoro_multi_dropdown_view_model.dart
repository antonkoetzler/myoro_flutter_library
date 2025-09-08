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
    : super(configuration);

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
  void initializeMenuController(BuildContext context, MyoroDropdownThemeExtension themeExtension) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final menuBorder = themeExtension.menuBorder ?? themeExtension.menuBorder;
    final menuBorderRadius = themeExtension.menuBorderRadius ?? themeExtension.menuBorderRadius;

    final configuration = state.configuration;
    final menuConfiguration = configuration.menuConfiguration;

    state.menuController = MyoroMultiMenuController(
      configuration: menuConfiguration.copyWith(border: menuBorder, borderRadius: menuBorderRadius),
    );

    state.menuController.selectedItemsNotifier.addListener(selectedItemsNotifierListener);
    if (state.menuController.selectedItems.isNotEmpty) formatSelectedItems();
  }

  @override
  Widget get menuWidget {
    final menuController = state.menuController;
    return MyoroMultiMenu<T>(controller: menuController);
  }
}
