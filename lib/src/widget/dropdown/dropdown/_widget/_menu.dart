part of '../myoro_dropdown.dart';

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T, C extends _C<T>> extends StatelessWidget {
  /// Shows a [MyoroModel] when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.modal].
  static void showModal<T, C extends _C<T>>(BuildContext context) {
    MyoroModal.show(context, child: _Menu<T, C>());
  }

  const _Menu();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final configuration = viewModel.state.configuration;
    final menuConfiguration = configuration.menuConfiguration;
    final selectedItemsController = viewModel.controller.selectedItemsController;
    final tapRegionGroupId = viewModel.state.tapRegionGroupId;

    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): viewModel.toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: tapRegionGroupId,
          onTapOutside: (_) => viewModel.toggleMenu(),
          child: ValueListenableBuilder(
            valueListenable: selectedItemsController,
            builder: (_, _, _) {
              return MyoroMenu(
                configuration: menuConfiguration.copyWith(itemBuilder: (T item) => _menuItemBuilder(context, item)),
              );
            },
          ),
        ),
      ),
    );
  }

  MyoroMenuItem _menuItemBuilder(BuildContext context, T item) {
    final viewModel = context.read<MyoroDropdownViewModel<T, C>>();
    final menuConfiguration = viewModel.state.configuration.menuConfiguration;
    final selectedItemsController = viewModel.controller.selectedItemsController;
    final selectedItems = selectedItemsController.value;

    final MyoroMenuItem menuItem = menuConfiguration.itemBuilder(item);
    return menuItem.copyWith(
      isSelected: selectedItems.contains(item),
      onTapUp: (TapUpDetails details) {
        menuItem.onTapUp?.call(details);
        viewModel.controller.toggleItem(item);
      },
    );
  }
}
