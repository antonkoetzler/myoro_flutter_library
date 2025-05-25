part of '../myoro_dropdown.dart';

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T, C extends _C<T>> extends StatelessWidget {
  final MyoroDropdownViewModel<T, C> _viewModel;
  MyoroDropdownConfiguration<T> get _configuration => _viewModel.state.configuration;
  MyoroMenuConfiguration<T> get _menuConfiguration => _configuration.menuConfiguration;
  ValueNotifier<Set<T>> get _selectedItemsController => _viewModel.controller.state.selectedItemsController;
  Set<T> get _selectedItems => _selectedItemsController.value;
  String get _tapRegionGroupId => _viewModel.state.tapRegionGroupId;

  const _Menu(this._viewModel);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _viewModel.toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: _tapRegionGroupId,
          onTapOutside: (_) => _viewModel.toggleMenu(),
          child: ValueListenableBuilder(
            valueListenable: _selectedItemsController,
            builder: (_, __, ___) => _selectedItemsControllerBuilder(context),
          ),
        ),
      ),
    );
  }

  Widget _selectedItemsControllerBuilder(BuildContext context) {
    return MyoroMenu(
      configuration: _menuConfiguration.copyWith(itemBuilder: (T item) => _menuItemBuilder(context, item)),
    );
  }

  MyoroMenuItem _menuItemBuilder(BuildContext context, T item) {
    final MyoroMenuItem menuItem = _menuConfiguration.itemBuilder(item);
    return menuItem.copyWith(
      isSelected: _selectedItems.contains(item),
      onTapUp: (TapUpDetails details) {
        menuItem.onTapUp?.call(details);
        _viewModel.controller.toggleItem(item);
      },
    );
  }
}
