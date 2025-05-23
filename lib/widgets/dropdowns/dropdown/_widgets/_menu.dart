part of '../myoro_dropdown.dart';

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T, C extends MyoroDropdownConfiguration<T>> extends StatelessWidget {
  final MyoroDropdownController<T, C> _controller;
  MyoroDropdownConfiguration<T> get _configuration => _controller.state.configuration;
  MyoroMenuConfiguration<T> get _menuConfiguration => _configuration.menuConfiguration;
  ValueNotifier<Set<T>> get _selectedItemsController => _controller.state.selectedItemsController;
  Set<T> get _selectedItems => _selectedItemsController.value;
  String get _tapRegionGroupId => _controller.state.tapRegionGroupId;

  const _Menu(this._controller);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _controller.toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: _tapRegionGroupId,
          onTapOutside: (_) => _controller.toggleMenu(),
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
        _controller.toggleItem(item);
      },
    );
  }
}
