part of '../bundle/myoro_menu_bundle.dart';

/// Item in the menu.
final class _Item<T, C extends _C<T>> extends StatelessWidget {
  const _Item(this._item, this._menuItem, this._selectedItems);

  final T _item;
  final MyoroMenuItem _menuItem;
  final Set<T> _selectedItems;

  @override
  Widget build(context) {
    final isSelected = _selectedItems.contains(_item);

    final menuThemeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final itemBorderRadius = style.itemBorderRadius ?? menuThemeExtension.itemBorderRadius;
    final selectedItemColor = isSelected ? (style.selectedItemColor ?? menuThemeExtension.selectedItemColor) : null;

    final viewModel = context.read<MyoroMenuViewModel<T, C>>();
    final toggleItem = viewModel.toggleItem;

    return switch (_menuItem) {
      MyoroMenuButtonItem() => MyoroButton(
        style: const MyoroButtonStyle()
            .copyWith(borderRadius: itemBorderRadius)
            .singleBackgroundColor(selectedItemColor),
        cursor: _menuItem.cursor,
        tooltipConfiguration: _menuItem.tooltipConfiguration,
        onTapDown: _menuItem.onTapDown,
        onTapUp: (details) {
          _menuItem.onTapUp?.call(details);
          toggleItem(_item);
        },
        isLoading: _menuItem.isLoading,
        builder: _menuItem.builder,
      ),
      MyoroMenuIconTextButtonItem() => MyoroIconTextButton(
        style: const MyoroIconTextButtonStyle()
            .copyWith(borderRadius: itemBorderRadius)
            .singleBackgroundColor(selectedItemColor),
        cursor: _menuItem.cursor,
        tooltipConfiguration: _menuItem.tooltipConfiguration,
        onTapDown: _menuItem.onTapDown,
        onTapUp: (details) {
          _menuItem.onTapUp?.call(details);
          toggleItem(_item);
        },
        isLoading: _menuItem.isLoading,
        invert: _menuItem.invert,
        iconConfiguration: _menuItem.iconConfiguration,
        textConfiguration: _menuItem.textConfiguration,
      ),
    };
  }
}
