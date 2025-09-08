import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingularDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroSingularDropdownViewModel<T>
    extends
        MyoroDropdownViewModel<
          T,
          MyoroSingularDropdownConfiguration<T>,
          MyoroSingularMenuConfiguration<T>,
          MyoroSingularMenuController<T>
        > {
  MyoroSingularDropdownViewModel(MyoroSingularDropdownConfiguration<T> configuration)
    : super(configuration);

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
  void initializeMenuController(BuildContext context, MyoroDropdownThemeExtension themeExtension) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    final menuBorder = themeExtension.menuBorder ?? themeExtension.menuBorder;
    final menuBorderRadius = themeExtension.menuBorderRadius ?? themeExtension.menuBorderRadius;

    final configuration = state.configuration;
    final menuConfiguration = configuration.menuConfiguration;

    state.menuController = MyoroSingularMenuController(
      configuration: menuConfiguration.copyWith(border: menuBorder, borderRadius: menuBorderRadius),
    );

    state.menuController.selectedItemNotifier.addListener(selectedItemsNotifierListener);
    if (state.menuController.selectedItem == null) formatSelectedItems();
  }

  @override
  Widget get menuWidget {
    final menuController = state.menuController;
    return MyoroSingularMenu<T>(controller: menuController);
  }
}
